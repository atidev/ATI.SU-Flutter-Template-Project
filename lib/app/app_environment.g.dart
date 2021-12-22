// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_environment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppEnvironment _$$_AppEnvironmentFromJson(Map<String, dynamic> json) =>
    _$_AppEnvironment(
      buildType: $enumDecode(_$BuildTypeEnumMap, json['buildType']),
      debugOptions:
          DebugOptions.fromJson(json['debugOptions'] as Map<String, dynamic>),
      debugPaintOptions: DebugPaintOptions.fromJson(
          json['debugPaintOptions'] as Map<String, dynamic>),
      logLevel: $enumDecode(_$AppLogLevelEnumMap, json['logLevel']),
      enableEasyLocalizationLogs: json['enableEasyLocalizationLogs'] as bool,
      enableBlocLogs: json['enableBlocLogs'] as bool,
      enableRoutingLogs: json['enableRoutingLogs'] as bool,
      enableDioLogs: json['enableDioLogs'] as bool,
    );

Map<String, dynamic> _$$_AppEnvironmentToJson(_$_AppEnvironment instance) =>
    <String, dynamic>{
      'buildType': _$BuildTypeEnumMap[instance.buildType],
      'debugOptions': instance.debugOptions,
      'debugPaintOptions': instance.debugPaintOptions,
      'logLevel': _$AppLogLevelEnumMap[instance.logLevel],
      'enableEasyLocalizationLogs': instance.enableEasyLocalizationLogs,
      'enableBlocLogs': instance.enableBlocLogs,
      'enableRoutingLogs': instance.enableRoutingLogs,
      'enableDioLogs': instance.enableDioLogs,
    };

const _$BuildTypeEnumMap = {
  BuildType.debug: 'debug',
  BuildType.release: 'release',
};

const _$AppLogLevelEnumMap = {
  AppLogLevel.verbose: 'verbose',
  AppLogLevel.debug: 'debug',
  AppLogLevel.info: 'info',
  AppLogLevel.warning: 'warning',
  AppLogLevel.error: 'error',
  AppLogLevel.wtf: 'wtf',
  AppLogLevel.nothing: 'nothing',
};

_$_DebugOptions _$$_DebugOptionsFromJson(Map<String, dynamic> json) =>
    _$_DebugOptions(
      showPerformanceOverlay: json['showPerformanceOverlay'] as bool? ?? false,
      debugShowMaterialGrid: json['debugShowMaterialGrid'] as bool? ?? false,
      checkerboardRasterCacheImages:
          json['checkerboardRasterCacheImages'] as bool? ?? false,
      checkerboardOffscreenLayers:
          json['checkerboardOffscreenLayers'] as bool? ?? false,
      showSemanticsDebugger: json['showSemanticsDebugger'] as bool? ?? false,
      debugShowCheckedModeBanner:
          json['debugShowCheckedModeBanner'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DebugOptionsToJson(_$_DebugOptions instance) =>
    <String, dynamic>{
      'showPerformanceOverlay': instance.showPerformanceOverlay,
      'debugShowMaterialGrid': instance.debugShowMaterialGrid,
      'checkerboardRasterCacheImages': instance.checkerboardRasterCacheImages,
      'checkerboardOffscreenLayers': instance.checkerboardOffscreenLayers,
      'showSemanticsDebugger': instance.showSemanticsDebugger,
      'debugShowCheckedModeBanner': instance.debugShowCheckedModeBanner,
    };

_$_DebugPaintOptions _$$_DebugPaintOptionsFromJson(Map<String, dynamic> json) =>
    _$_DebugPaintOptions(
      debugPaintSizeEnabled: json['debugPaintSizeEnabled'] as bool? ?? false,
      debugPaintBaselinesEnabled:
          json['debugPaintBaselinesEnabled'] as bool? ?? false,
      debugPaintPointersEnabled:
          json['debugPaintPointersEnabled'] as bool? ?? false,
      debugPaintLayerBordersEnabled:
          json['debugPaintLayerBordersEnabled'] as bool? ?? false,
      debugRepaintRainbowEnabled:
          json['debugRepaintRainbowEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$$_DebugPaintOptionsToJson(
        _$_DebugPaintOptions instance) =>
    <String, dynamic>{
      'debugPaintSizeEnabled': instance.debugPaintSizeEnabled,
      'debugPaintBaselinesEnabled': instance.debugPaintBaselinesEnabled,
      'debugPaintPointersEnabled': instance.debugPaintPointersEnabled,
      'debugPaintLayerBordersEnabled': instance.debugPaintLayerBordersEnabled,
      'debugRepaintRainbowEnabled': instance.debugRepaintRainbowEnabled,
    };
