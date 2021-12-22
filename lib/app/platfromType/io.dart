import 'dart:io';

import 'package:ati_su_flutter_template_project/app/platfromType/app_platform.dart';

/// Метод для поставки вида платформы. Реализация для IO, на текущий момент: Android, iOS
AppPlatform providePlatform() {
  if (Platform.isAndroid) {
    return AppPlatform.android;
  } else if (Platform.isIOS) {
    return AppPlatform.ios;
  } else {
    throw StateError('Platform not supported');
  }
}
