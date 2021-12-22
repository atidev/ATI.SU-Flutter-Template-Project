import 'package:ati_su_flutter_template_project/arch/dio_error_handler/models/dio_error_models.dart';
import 'package:ati_su_flutter_template_project/arch/functional_models/either.dart';
import 'package:ati_su_flutter_template_project/features/main_page/data/time_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Протокол для работы с интерактором для расчета максимального времени
abstract class GreatestTimeInteractor {
  /// Метод возвращает максимальное время с сервера или с девайса
  Future<Either<CommonResponseError<DefaultApiError>, DateTime>> getGreatestServerOrPhoneTime();
}

/// Базовая реализация [GreatestTimeInteractor]
@Singleton(as: GreatestTimeInteractor)
class GreatestTimeInteractorImpl implements GreatestTimeInteractor {
  @protected
  final TimeRepository timeRepository;

  GreatestTimeInteractorImpl({
    required this.timeRepository,
  });

  @override
  Future<Either<CommonResponseError<DefaultApiError>, DateTime>> getGreatestServerOrPhoneTime() async {
    final fetchTimeModelResult = await timeRepository.fetchTime();
    if (fetchTimeModelResult.isLeft) {
      return Either.left(fetchTimeModelResult.left);
    }
    final deviceTime = DateTime.now();
    final repositoryTime = fetchTimeModelResult.right.currentDateTime;

    return Either.right(deviceTime.isAfter(repositoryTime) ? deviceTime : repositoryTime);
  }
}
