// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'app_environment.freezed.dart';
part 'app_environment.g.dart';

/// Базовые настройки конфигруации при запуске приложения
@freezed
class AppEnvironment with _$AppEnvironment {
  /// [buildType] - вид билда приложения
  /// [debugOptions] - набор debug-flutter настроек приложения
  /// [debugPaintOptions] - набор debug настроек отрисовки Flutter движка, позволяющие отлаживать различные моменты
  /// [logLevel] - минимальный логируемый уровень лог-системы приложения
  /// [enableEasyLocalizationLogs] - параметр управляющий включением/выключением логов слоя локализации
  /// [enableBlocLogs] - параметр управляющий включением/выключением логов Bloc слоя
  /// [enableRoutingLogs] - параметр управляющий включением/выключением логов Routing слоя
  /// [enableDioLogs] - параметр управляющий включением/выключением логов http слоя
  const factory AppEnvironment({
    required BuildType buildType,
    required DebugOptions debugOptions,
    required DebugPaintOptions debugPaintOptions,
    required AppLogLevel logLevel,
    required bool enableEasyLocalizationLogs,
    required bool enableBlocLogs,
    required bool enableRoutingLogs,
    required bool enableDioLogs,
  }) = _AppEnvironment;

  factory AppEnvironment.fromJson(Map<String, dynamic> json) => _$AppEnvironmentFromJson(json);
}

/// Конфигурируемые уровни логирование, используемые в приложении
enum AppLogLevel {
  @JsonValue(AppLogLevels.verboseStr)
  verbose,
  @JsonValue(AppLogLevels.debugStr)
  debug,
  @JsonValue(AppLogLevels.infoStr)
  info,
  @JsonValue(AppLogLevels.warningStr)
  warning,
  @JsonValue(AppLogLevels.errorStr)
  error,
  @JsonValue(AppLogLevels.wtfStr)
  wtf,
  @JsonValue(AppLogLevels.nothingStr)
  nothing,
}

/// Типы сборок приложения
enum BuildType {
  /// Debug build type
  @JsonValue('debug')
  debug,

  /// Release build type
  @JsonValue('release')
  release,
}

/// Набор конифигурируемых опций, используемых в Flutter Application
@freezed
class DebugOptions with _$DebugOptions {
  const factory DebugOptions({
    @Default(false) bool showPerformanceOverlay,
    @Default(false) bool debugShowMaterialGrid,
    @Default(false) bool checkerboardRasterCacheImages,
    @Default(false) bool checkerboardOffscreenLayers,
    @Default(false) bool showSemanticsDebugger,
    @Default(false) bool debugShowCheckedModeBanner,
  }) = _DebugOptions;

  factory DebugOptions.fromJson(Map<String, dynamic> json) => _$DebugOptionsFromJson(json);
}

/// Дебаг-опции для настройки Skia
@freezed
class DebugPaintOptions with _$DebugPaintOptions {
  const factory DebugPaintOptions({
    @Default(false) bool debugPaintSizeEnabled,
    @Default(false) bool debugPaintBaselinesEnabled,
    @Default(false) bool debugPaintPointersEnabled,
    @Default(false) bool debugPaintLayerBordersEnabled,
    @Default(false) bool debugRepaintRainbowEnabled,
  }) = _DebugPaintOptions;

  factory DebugPaintOptions.fromJson(Map<String, dynamic> json) => _$DebugPaintOptionsFromJson(json);
}

/// Расширения над [AppLogLevel] для работы с [Logger] и работы с переменными окружения
extension AppLogLevels on AppLogLevel {
  Level get logeerLevel {
    switch (this) {
      case AppLogLevel.verbose:
        return Level.verbose;
      case AppLogLevel.debug:
        return Level.debug;
      case AppLogLevel.info:
        return Level.info;
      case AppLogLevel.warning:
        return Level.warning;
      case AppLogLevel.error:
        return Level.error;
      case AppLogLevel.wtf:
        return Level.wtf;
      case AppLogLevel.nothing:
        return Level.nothing;
    }
  }

  static AppLogLevel? getFromString(String logLevelStr) {
    if (logLevelStr == verboseStr) {
      return AppLogLevel.verbose;
    }
    if (logLevelStr == debugStr) {
      return AppLogLevel.debug;
    }
    if (logLevelStr == infoStr) {
      return AppLogLevel.info;
    }
    if (logLevelStr == warningStr) {
      return AppLogLevel.warning;
    }
    if (logLevelStr == errorStr) {
      return AppLogLevel.error;
    }
    if (logLevelStr == wtfStr) {
      return AppLogLevel.wtf;
    }
    if (logLevelStr == nothingStr) {
      return AppLogLevel.nothing;
    }

    return null;
  }

  static const verboseStr = 'verbose';
  static const debugStr = 'debug';
  static const infoStr = 'info';
  static const warningStr = 'warning';
  static const errorStr = 'error';
  static const wtfStr = 'wtf';
  static const nothingStr = 'nothing';
}

/// Расширеня над [BuildType] для работы с переменными окружения
extension BuildTypes on BuildType {
  static const debugEnvKey = 'debugEnv';
  static const releaseEnvKey = 'releaseEnv';

  /// Метод возвращает строкове значение окружение, на котором базируется DI-дерево GetIt
  String get getItEnvironmentKey {
    switch (this) {
      case BuildType.debug:
        return debugEnvKey;
      case BuildType.release:
        return releaseEnvKey;
    }
  }
}
