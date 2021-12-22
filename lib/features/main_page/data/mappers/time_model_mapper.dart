import 'package:ati_su_flutter_template_project/features/main_page/data/time_models.dart';
import 'package:injectable/injectable.dart';

/// Маппер для преобразования DTO моделей времени [TimeResponse] и бизнес моделей [TimeModel]
@singleton
class TimeModelMapper {
  TimeModel mapFromResponse(TimeResponse timeResponse) {
    return TimeModel(currentDateTime: timeResponse.currentDateTime);
  }
}
