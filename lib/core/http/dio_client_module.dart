import 'package:ati_su_flutter_template_project/arch/dio_error_handler/dio_error_handler.dart';
import 'package:ati_su_flutter_template_project/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:ati_su_flutter_template_project/const/injectable_names.dart';
import 'package:ati_su_flutter_template_project/core/http/dio_client_creator.dart';
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Модуль поставляющий зависимости, связанные с [Dio]
@module
abstract class DioClientModule {
  @Named(InjectableNames.timeHttpClient)
  @preResolve
  @singleton
  Future<Dio> makeDioClient(DioClientCreator dioClientCreator) => dioClientCreator.makeTimeDioClient();

  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioErrorHandler(Logger logger) => DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        logger: logger,
        parseJsonApiError: (json) async {
          //метод, парсящий ошибку от сервера
          return (json != null) ? DefaultApiError.fromJson(json) : null;
        },
      );
}
