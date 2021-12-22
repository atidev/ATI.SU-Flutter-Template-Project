import 'dart:async';
import 'dart:convert';

import 'package:ati_su_flutter_template_project/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:ati_su_flutter_template_project/arch/functional_models/either.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:retry/retry.dart';

typedef ParseJsonApiError<DE> = Future<DE?> Function(Map<String, dynamic>?);
typedef MakeRequest<T> = Future<T> Function();

/// Протокол для обработки запросов [MakeRequest] от [Dio] в результате возвращает [Either]
/// Левая часть отвечает за ошибки вида [CommonResponseError]
/// Правая часть возвращает результат запроса Dio [Response]
abstract class DioErrorHandler<DE> {
  Future<Either<CommonResponseError<DE>, T>> processRequest<T>(MakeRequest<T> makeRequest);
}

/// Базовая реализация [DioErrorHandler]
///
/// В случае ошибки соответсвующей [retryStatusCodes] выполняется 3 попытки перезапроса данных.
/// В случае отсутсвия интернета или проблем с соединением возвращает ошибку в левой части Either [CommonResponseError.noNetwork]
/// В случае если срвер отклонил запрос с кодом [_HttpStatus.unauthorized] возвращаетв левой части Either [CommonResponseError.unAuthorized]
/// В случае если сервер вренул ошибку соответствующую контракту [DefaultApiError] возвращает [CommonResponseError.customError]
/// Если [DioError] не соответсвует ни одному из критериев возвращается [CommonResponseError.undefinedError]
class DioErrorHandlerImpl<DE> implements DioErrorHandler<DE> {
  /// Количество попыток перевыполнения запроса
  static const defaultMaxAttemptsCount = 3;

  /// Коды ошибок при которых требуется перевыполнение запроса (без bad request)
  static const retryStatusCodesWithoutBadReq = [
    _HttpStatus.notFound,
    _HttpStatus.forbidden,
    _HttpStatus.unauthorized,
    _HttpStatus.unsupportedMediaType,
  ];

  /// Базовый список кодов ошибок при которых требуется перевыполнение запроса
  static const defaultRetryStatusCodes = [
    ...retryStatusCodesWithoutBadReq,
    _HttpStatus.badRequest,
  ];

  /// Список кодов ошибок, обозначающих неизвестное поведение сервера - [CommonResponseError.undefinedError]
  static const defaultUndefinedErrorCodes = [
    _HttpStatus.internalServerError,
    _HttpStatus.notImplemented,
    _HttpStatus.badGateway,
    _HttpStatus.serviceUnavailable,
  ];

  @protected
  final Connectivity connectivity;
  @protected
  final Logger logger;
  @protected
  final List<int> retryStatusCodes;
  @protected
  final List<int> undefinedErrorCodes;
  final int maxAttemptsCount;
  @protected
  ParseJsonApiError<DE> parseJsonApiError;

  DioErrorHandlerImpl({
    required this.connectivity,
    required this.logger,
    required this.parseJsonApiError,
    this.maxAttemptsCount = defaultMaxAttemptsCount,
    this.retryStatusCodes = defaultRetryStatusCodes,
    this.undefinedErrorCodes = defaultUndefinedErrorCodes,
  });

  @override
  Future<Either<CommonResponseError<DE>, T>> processRequest<T>(MakeRequest<T> makeRequest) async {
    final resultConnectivity = await connectivity.checkConnectivity();
    if (resultConnectivity == ConnectivityResult.none) {
      return const Either.left(CommonResponseError.noNetwork());
    }

    try {
      final response = await retry(
        makeRequest,
        maxAttempts: maxAttemptsCount,
        retryIf: (exception) => _retryPolicy(
          exception: exception,
          retryStatusCodes: retryStatusCodes,
        ),
      );

      return Either.right(response);
    } on DioError catch (e) {
      return Either.left(await _processDioError(e));
    } on Exception catch (e) {
      logger.e('При обработке запоса была выброшена ошибка', e);
      return Either.left(CommonResponseError.undefinedError(e));
    }
  }

  //Политика повторных запросов
  FutureOr<bool> _retryPolicy({
    required Exception exception,
    required List<int> retryStatusCodes,
  }) {
    if (exception is! DioError) return false;
    if (exception.type == DioErrorType.cancel) return false;
    final response = exception.response;
    if (response == null) {
      logger.w('Ошибка обработки ответа сетевого запроса:', exception.message);

      return true;
    }

    return retryStatusCodes.contains(response.statusCode);
  }

  Future<CommonResponseError<DE>> _processDioError(DioError e) async {
    final responseData = e.response?.data;
    final statusCode = e.response?.statusCode;

    if (e.type == DioErrorType.connectTimeout ||
        e.type == DioErrorType.sendTimeout ||
        statusCode == _HttpStatus.networkConnectTimeoutError) {
      return const CommonResponseError.noNetwork();
    }

    if (statusCode == _HttpStatus.unauthorized) {
      return const CommonResponseError.unAuthorized();
    }

    if (statusCode == _HttpStatus.tooManyRequests) {
      return const CommonResponseError.tooManyRequests();
    }

    if (undefinedErrorCodes.contains(statusCode)) {
      return CommonResponseError.undefinedError(e);
    }

    Object? errorJson;
    if (responseData is String) {
      //В случае если ожидался Response<String> dio не будет парсить возвращенную json-ошибку
      //и нам это нужно сделать вручную
      try {
        errorJson = jsonDecode(responseData);
      } on FormatException {
        //Возможно был нарушен контракт/с сервером случилась беда, тогда мы вернем [CommonResponseError.undefinedError]
        logger.w('Получили ответ: \n "$responseData" \n что не является JSON');
      }
    } else if (responseData is Map<String, dynamic>) {
      //Если запрос ожидал JSON, то и json-ответ ошибки будет приведен к нужному виду
      errorJson = responseData;
    }

    if (errorJson is Map<String, dynamic>) {
      try {
        final apiError = await parseJsonApiError(errorJson);
        if (apiError != null) {
          return CommonResponseError.customError(apiError);
        }
        // ignore: avoid_catching_errors
      } on TypeError catch (e) {
        logger.w('Ответ c ошибкой от сервера \n $responseData \n не соответсвует контракту ApiError', e);
      }
    }

    return CommonResponseError.undefinedError(e);
  }
}

class _HttpStatus {
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int unsupportedMediaType = 415;
  static const int internalServerError = 500;
  static const int notImplemented = 501;
  static const int badGateway = 502;
  static const int serviceUnavailable = 503;

  static const int networkConnectTimeoutError = 599;
  static const int tooManyRequests = 429;
}
