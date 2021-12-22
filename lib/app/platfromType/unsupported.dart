import 'package:ati_su_flutter_template_project/app/platfromType/app_platform.dart';

/// Метод для поставки вида платформы. Реализация для неподдерживаемой платформы
AppPlatform providePlatform() {
  throw StateError('Platform not supported');
}
