import 'package:ati_su_flutter_template_project/app/platfromType/shared.dart';

/// Виды платформ поддерживаемые Грузоводом
enum AppPlatform {
  /// Веб платформа (FlutterWeb)
  web,
  // ios - FlutterMobile
  ios,
  // android - FlutterMobile
  android,
}

/// Расширения над [AppPlatform] для получения текстового представления enum
extension AppPlatforms on AppPlatform {
  String get name {
    switch (this) {
      case AppPlatform.web:
        return 'Web';
      case AppPlatform.ios:
        return 'iOS';
      case AppPlatform.android:
        return 'Android';
    }
  }

  static AppPlatform get() => providePlatform();
}
