// ignore_for_file: do_not_use_environment

import 'package:ati_su_flutter_template_project/app/app_environment.dart';
import 'package:ati_su_flutter_template_project/app/runner.dart';
import 'package:flutter/foundation.dart';

/// Точка запуска основного приложения
void main() {
  // Получаем параметры окружения переданные при сборке/запуске проекта
  // Здесь можно вводить необходимые конфигурируемые параметры для различных видов сборок приложения
  const logLevelEnv = String.fromEnvironment('logLevel');
  const debugInstrumentsEnv = bool.fromEnvironment('debugInstruments');

  const buildType = !kReleaseMode || debugInstrumentsEnv ? BuildType.debug : BuildType.release;
  final appLogLevel = AppLogLevels.getFromString(logLevelEnv);
  final enableLogs = appLogLevel != AppLogLevel.nothing;

  Runner.run(
    AppEnvironment(
      buildType: buildType,
      debugOptions: DebugOptions(
        debugShowCheckedModeBanner: buildType == BuildType.debug,
      ),
      debugPaintOptions: const DebugPaintOptions(),
      logLevel: appLogLevel ?? AppLogLevel.verbose,
      enableBlocLogs: enableLogs,
      enableRoutingLogs: enableLogs,
      enableDioLogs: enableLogs,
      enableEasyLocalizationLogs: false,
    ),
  );
}
