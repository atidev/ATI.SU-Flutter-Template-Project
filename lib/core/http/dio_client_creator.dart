import 'package:ati_su_flutter_template_project/app/app_environment.dart';
import 'package:ati_su_flutter_template_project/arch/dio_packgages_fork/flutter_transformer.dart';
import 'package:ati_su_flutter_template_project/arch/dio_packgages_fork/pretty_dio_logger.dart';
import 'package:ati_su_flutter_template_project/core/http/link_provider.dart';
import 'package:ati_su_flutter_template_project/core/infrastructure/dio_logger_wrapper.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

///Абстракция для создания DIO-клиентов
abstract class DioClientCreator {
  ///Возвращает http-client для подключения к домену работы с time-api
  Future<Dio> makeTimeDioClient();
}

///Базовая реализация [DioClientCreator] базирующаяся на [DriverEnvironment] и [LinkProvider]
@Singleton(as: DioClientCreator)
class DioClientCreatorImpl implements DioClientCreator {
  static const defaultConnectTimeout = 5000;
  static const defaultReceiveTimeout = 25000;

  @protected
  final LinkProvider linkProvider;
  @protected
  final AppEnvironment appEnvironment;
  @protected
  final DioLoggerWrapper logger;

  DioClientCreatorImpl({
    required this.linkProvider,
    required this.logger,
    required this.appEnvironment,
  });

  @override
  Future<Dio> makeTimeDioClient() => _baseDio(linkProvider.timeHost);

  /// Метод подставляющий базовую настроенную версию Dio
  Future<Dio> _baseDio(final String url) async {
    final startDio = Dio();

    startDio.options.baseUrl = url;
    startDio.options.connectTimeout = defaultConnectTimeout;
    startDio.options.receiveTimeout = defaultReceiveTimeout;

    if (appEnvironment.enableDioLogs) {
      startDio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          logPrint: logger.logPrint,
        ),
      );
    }

    startDio.transformer = FlutterTransformer();
    return startDio;
  }
}
