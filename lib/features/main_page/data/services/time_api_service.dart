import 'package:ati_su_flutter_template_project/arch/dio_error_handler/dio_error_handler.dart';
import 'package:ati_su_flutter_template_project/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:ati_su_flutter_template_project/arch/functional_models/either.dart';
import 'package:ati_su_flutter_template_project/const/injectable_names.dart';
import 'package:ati_su_flutter_template_project/features/main_page/data/time_models.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

/// Протокол api-сервиса для запроса текущего времени
abstract class TimeApiService {
  /// Метод для получения текущего времени [TimeResponse]
  Future<Either<CommonResponseError<DefaultApiError>, TimeResponse>> getTime();
}

@Singleton(as: TimeApiService)
class TimeApiServiceImpl implements TimeApiService {
  static const _nowTimeApi = '/api/json/utc/now';

  final Dio _client;
  final DioErrorHandler<DefaultApiError> _dioErrorHandler;

  TimeApiServiceImpl(
    @Named(InjectableNames.timeHttpClient) this._client,
    this._dioErrorHandler,
  );

  @override
  Future<Either<CommonResponseError<DefaultApiError>, TimeResponse>> getTime() async {
    final result = await _dioErrorHandler.processRequest(() => _client.get<Map<String, dynamic>>(_nowTimeApi));
    if (result.isLeft) return Either.left(result.left);
    return Either.right(TimeResponse.fromJson(result.right.data!));
  }
}
