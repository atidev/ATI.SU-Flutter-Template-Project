import 'package:ati_su_flutter_template_project/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:ati_su_flutter_template_project/arch/functional_models/either.dart';
import 'package:ati_su_flutter_template_project/features/main_page/data/mappers/time_model_mapper.dart';
import 'package:ati_su_flutter_template_project/features/main_page/data/services/time_api_service.dart';
import 'package:ati_su_flutter_template_project/features/main_page/data/time_models.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Протокол для работы с репозиторием для поставки данных о текущем времени
abstract class TimeRepository {
  /// Метод для запроса актуального времени
  Future<Either<CommonResponseError<DefaultApiError>, TimeModel>> fetchTime();
}

/// Базовая реализация [TimeRepository]
@Singleton(as: TimeRepository)
class TimeRepositoryImpl implements TimeRepository {
  @protected
  final TimeApiService timeApiService;
  @protected
  final TimeModelMapper timeModelMapper;

  TimeRepositoryImpl({
    required this.timeApiService,
    required this.timeModelMapper,
  });

  @override
  Future<Either<CommonResponseError<DefaultApiError>, TimeModel>> fetchTime() async {
    final fetchTimeResult = await timeApiService.getTime();
    if (fetchTimeResult.isLeft) {
      return Either.left(fetchTimeResult.left);
    }

    return Either.right(timeModelMapper.mapFromResponse(fetchTimeResult.right));
  }
}
