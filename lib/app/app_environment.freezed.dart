// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppEnvironment _$AppEnvironmentFromJson(Map<String, dynamic> json) {
  return _AppEnvironment.fromJson(json);
}

/// @nodoc
class _$AppEnvironmentTearOff {
  const _$AppEnvironmentTearOff();

  _AppEnvironment call(
      {required BuildType buildType,
      required DebugOptions debugOptions,
      required DebugPaintOptions debugPaintOptions,
      required AppLogLevel logLevel,
      required bool enableEasyLocalizationLogs,
      required bool enableBlocLogs,
      required bool enableRoutingLogs,
      required bool enableDioLogs}) {
    return _AppEnvironment(
      buildType: buildType,
      debugOptions: debugOptions,
      debugPaintOptions: debugPaintOptions,
      logLevel: logLevel,
      enableEasyLocalizationLogs: enableEasyLocalizationLogs,
      enableBlocLogs: enableBlocLogs,
      enableRoutingLogs: enableRoutingLogs,
      enableDioLogs: enableDioLogs,
    );
  }

  AppEnvironment fromJson(Map<String, Object?> json) {
    return AppEnvironment.fromJson(json);
  }
}

/// @nodoc
const $AppEnvironment = _$AppEnvironmentTearOff();

/// @nodoc
mixin _$AppEnvironment {
  BuildType get buildType => throw _privateConstructorUsedError;
  DebugOptions get debugOptions => throw _privateConstructorUsedError;
  DebugPaintOptions get debugPaintOptions => throw _privateConstructorUsedError;
  AppLogLevel get logLevel => throw _privateConstructorUsedError;
  bool get enableEasyLocalizationLogs => throw _privateConstructorUsedError;
  bool get enableBlocLogs => throw _privateConstructorUsedError;
  bool get enableRoutingLogs => throw _privateConstructorUsedError;
  bool get enableDioLogs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppEnvironmentCopyWith<AppEnvironment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEnvironmentCopyWith<$Res> {
  factory $AppEnvironmentCopyWith(
          AppEnvironment value, $Res Function(AppEnvironment) then) =
      _$AppEnvironmentCopyWithImpl<$Res>;
  $Res call(
      {BuildType buildType,
      DebugOptions debugOptions,
      DebugPaintOptions debugPaintOptions,
      AppLogLevel logLevel,
      bool enableEasyLocalizationLogs,
      bool enableBlocLogs,
      bool enableRoutingLogs,
      bool enableDioLogs});

  $DebugOptionsCopyWith<$Res> get debugOptions;
  $DebugPaintOptionsCopyWith<$Res> get debugPaintOptions;
}

/// @nodoc
class _$AppEnvironmentCopyWithImpl<$Res>
    implements $AppEnvironmentCopyWith<$Res> {
  _$AppEnvironmentCopyWithImpl(this._value, this._then);

  final AppEnvironment _value;
  // ignore: unused_field
  final $Res Function(AppEnvironment) _then;

  @override
  $Res call({
    Object? buildType = freezed,
    Object? debugOptions = freezed,
    Object? debugPaintOptions = freezed,
    Object? logLevel = freezed,
    Object? enableEasyLocalizationLogs = freezed,
    Object? enableBlocLogs = freezed,
    Object? enableRoutingLogs = freezed,
    Object? enableDioLogs = freezed,
  }) {
    return _then(_value.copyWith(
      buildType: buildType == freezed
          ? _value.buildType
          : buildType // ignore: cast_nullable_to_non_nullable
              as BuildType,
      debugOptions: debugOptions == freezed
          ? _value.debugOptions
          : debugOptions // ignore: cast_nullable_to_non_nullable
              as DebugOptions,
      debugPaintOptions: debugPaintOptions == freezed
          ? _value.debugPaintOptions
          : debugPaintOptions // ignore: cast_nullable_to_non_nullable
              as DebugPaintOptions,
      logLevel: logLevel == freezed
          ? _value.logLevel
          : logLevel // ignore: cast_nullable_to_non_nullable
              as AppLogLevel,
      enableEasyLocalizationLogs: enableEasyLocalizationLogs == freezed
          ? _value.enableEasyLocalizationLogs
          : enableEasyLocalizationLogs // ignore: cast_nullable_to_non_nullable
              as bool,
      enableBlocLogs: enableBlocLogs == freezed
          ? _value.enableBlocLogs
          : enableBlocLogs // ignore: cast_nullable_to_non_nullable
              as bool,
      enableRoutingLogs: enableRoutingLogs == freezed
          ? _value.enableRoutingLogs
          : enableRoutingLogs // ignore: cast_nullable_to_non_nullable
              as bool,
      enableDioLogs: enableDioLogs == freezed
          ? _value.enableDioLogs
          : enableDioLogs // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $DebugOptionsCopyWith<$Res> get debugOptions {
    return $DebugOptionsCopyWith<$Res>(_value.debugOptions, (value) {
      return _then(_value.copyWith(debugOptions: value));
    });
  }

  @override
  $DebugPaintOptionsCopyWith<$Res> get debugPaintOptions {
    return $DebugPaintOptionsCopyWith<$Res>(_value.debugPaintOptions, (value) {
      return _then(_value.copyWith(debugPaintOptions: value));
    });
  }
}

/// @nodoc
abstract class _$AppEnvironmentCopyWith<$Res>
    implements $AppEnvironmentCopyWith<$Res> {
  factory _$AppEnvironmentCopyWith(
          _AppEnvironment value, $Res Function(_AppEnvironment) then) =
      __$AppEnvironmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {BuildType buildType,
      DebugOptions debugOptions,
      DebugPaintOptions debugPaintOptions,
      AppLogLevel logLevel,
      bool enableEasyLocalizationLogs,
      bool enableBlocLogs,
      bool enableRoutingLogs,
      bool enableDioLogs});

  @override
  $DebugOptionsCopyWith<$Res> get debugOptions;
  @override
  $DebugPaintOptionsCopyWith<$Res> get debugPaintOptions;
}

/// @nodoc
class __$AppEnvironmentCopyWithImpl<$Res>
    extends _$AppEnvironmentCopyWithImpl<$Res>
    implements _$AppEnvironmentCopyWith<$Res> {
  __$AppEnvironmentCopyWithImpl(
      _AppEnvironment _value, $Res Function(_AppEnvironment) _then)
      : super(_value, (v) => _then(v as _AppEnvironment));

  @override
  _AppEnvironment get _value => super._value as _AppEnvironment;

  @override
  $Res call({
    Object? buildType = freezed,
    Object? debugOptions = freezed,
    Object? debugPaintOptions = freezed,
    Object? logLevel = freezed,
    Object? enableEasyLocalizationLogs = freezed,
    Object? enableBlocLogs = freezed,
    Object? enableRoutingLogs = freezed,
    Object? enableDioLogs = freezed,
  }) {
    return _then(_AppEnvironment(
      buildType: buildType == freezed
          ? _value.buildType
          : buildType // ignore: cast_nullable_to_non_nullable
              as BuildType,
      debugOptions: debugOptions == freezed
          ? _value.debugOptions
          : debugOptions // ignore: cast_nullable_to_non_nullable
              as DebugOptions,
      debugPaintOptions: debugPaintOptions == freezed
          ? _value.debugPaintOptions
          : debugPaintOptions // ignore: cast_nullable_to_non_nullable
              as DebugPaintOptions,
      logLevel: logLevel == freezed
          ? _value.logLevel
          : logLevel // ignore: cast_nullable_to_non_nullable
              as AppLogLevel,
      enableEasyLocalizationLogs: enableEasyLocalizationLogs == freezed
          ? _value.enableEasyLocalizationLogs
          : enableEasyLocalizationLogs // ignore: cast_nullable_to_non_nullable
              as bool,
      enableBlocLogs: enableBlocLogs == freezed
          ? _value.enableBlocLogs
          : enableBlocLogs // ignore: cast_nullable_to_non_nullable
              as bool,
      enableRoutingLogs: enableRoutingLogs == freezed
          ? _value.enableRoutingLogs
          : enableRoutingLogs // ignore: cast_nullable_to_non_nullable
              as bool,
      enableDioLogs: enableDioLogs == freezed
          ? _value.enableDioLogs
          : enableDioLogs // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppEnvironment implements _AppEnvironment {
  const _$_AppEnvironment(
      {required this.buildType,
      required this.debugOptions,
      required this.debugPaintOptions,
      required this.logLevel,
      required this.enableEasyLocalizationLogs,
      required this.enableBlocLogs,
      required this.enableRoutingLogs,
      required this.enableDioLogs});

  factory _$_AppEnvironment.fromJson(Map<String, dynamic> json) =>
      _$$_AppEnvironmentFromJson(json);

  @override
  final BuildType buildType;
  @override
  final DebugOptions debugOptions;
  @override
  final DebugPaintOptions debugPaintOptions;
  @override
  final AppLogLevel logLevel;
  @override
  final bool enableEasyLocalizationLogs;
  @override
  final bool enableBlocLogs;
  @override
  final bool enableRoutingLogs;
  @override
  final bool enableDioLogs;

  @override
  String toString() {
    return 'AppEnvironment(buildType: $buildType, debugOptions: $debugOptions, debugPaintOptions: $debugPaintOptions, logLevel: $logLevel, enableEasyLocalizationLogs: $enableEasyLocalizationLogs, enableBlocLogs: $enableBlocLogs, enableRoutingLogs: $enableRoutingLogs, enableDioLogs: $enableDioLogs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppEnvironment &&
            const DeepCollectionEquality().equals(other.buildType, buildType) &&
            const DeepCollectionEquality()
                .equals(other.debugOptions, debugOptions) &&
            const DeepCollectionEquality()
                .equals(other.debugPaintOptions, debugPaintOptions) &&
            const DeepCollectionEquality().equals(other.logLevel, logLevel) &&
            const DeepCollectionEquality().equals(
                other.enableEasyLocalizationLogs, enableEasyLocalizationLogs) &&
            const DeepCollectionEquality()
                .equals(other.enableBlocLogs, enableBlocLogs) &&
            const DeepCollectionEquality()
                .equals(other.enableRoutingLogs, enableRoutingLogs) &&
            const DeepCollectionEquality()
                .equals(other.enableDioLogs, enableDioLogs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(buildType),
      const DeepCollectionEquality().hash(debugOptions),
      const DeepCollectionEquality().hash(debugPaintOptions),
      const DeepCollectionEquality().hash(logLevel),
      const DeepCollectionEquality().hash(enableEasyLocalizationLogs),
      const DeepCollectionEquality().hash(enableBlocLogs),
      const DeepCollectionEquality().hash(enableRoutingLogs),
      const DeepCollectionEquality().hash(enableDioLogs));

  @JsonKey(ignore: true)
  @override
  _$AppEnvironmentCopyWith<_AppEnvironment> get copyWith =>
      __$AppEnvironmentCopyWithImpl<_AppEnvironment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppEnvironmentToJson(this);
  }
}

abstract class _AppEnvironment implements AppEnvironment {
  const factory _AppEnvironment(
      {required BuildType buildType,
      required DebugOptions debugOptions,
      required DebugPaintOptions debugPaintOptions,
      required AppLogLevel logLevel,
      required bool enableEasyLocalizationLogs,
      required bool enableBlocLogs,
      required bool enableRoutingLogs,
      required bool enableDioLogs}) = _$_AppEnvironment;

  factory _AppEnvironment.fromJson(Map<String, dynamic> json) =
      _$_AppEnvironment.fromJson;

  @override
  BuildType get buildType;
  @override
  DebugOptions get debugOptions;
  @override
  DebugPaintOptions get debugPaintOptions;
  @override
  AppLogLevel get logLevel;
  @override
  bool get enableEasyLocalizationLogs;
  @override
  bool get enableBlocLogs;
  @override
  bool get enableRoutingLogs;
  @override
  bool get enableDioLogs;
  @override
  @JsonKey(ignore: true)
  _$AppEnvironmentCopyWith<_AppEnvironment> get copyWith =>
      throw _privateConstructorUsedError;
}

DebugOptions _$DebugOptionsFromJson(Map<String, dynamic> json) {
  return _DebugOptions.fromJson(json);
}

/// @nodoc
class _$DebugOptionsTearOff {
  const _$DebugOptionsTearOff();

  _DebugOptions call(
      {bool showPerformanceOverlay = false,
      bool debugShowMaterialGrid = false,
      bool checkerboardRasterCacheImages = false,
      bool checkerboardOffscreenLayers = false,
      bool showSemanticsDebugger = false,
      bool debugShowCheckedModeBanner = false}) {
    return _DebugOptions(
      showPerformanceOverlay: showPerformanceOverlay,
      debugShowMaterialGrid: debugShowMaterialGrid,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      showSemanticsDebugger: showSemanticsDebugger,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
    );
  }

  DebugOptions fromJson(Map<String, Object?> json) {
    return DebugOptions.fromJson(json);
  }
}

/// @nodoc
const $DebugOptions = _$DebugOptionsTearOff();

/// @nodoc
mixin _$DebugOptions {
  bool get showPerformanceOverlay => throw _privateConstructorUsedError;
  bool get debugShowMaterialGrid => throw _privateConstructorUsedError;
  bool get checkerboardRasterCacheImages => throw _privateConstructorUsedError;
  bool get checkerboardOffscreenLayers => throw _privateConstructorUsedError;
  bool get showSemanticsDebugger => throw _privateConstructorUsedError;
  bool get debugShowCheckedModeBanner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebugOptionsCopyWith<DebugOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebugOptionsCopyWith<$Res> {
  factory $DebugOptionsCopyWith(
          DebugOptions value, $Res Function(DebugOptions) then) =
      _$DebugOptionsCopyWithImpl<$Res>;
  $Res call(
      {bool showPerformanceOverlay,
      bool debugShowMaterialGrid,
      bool checkerboardRasterCacheImages,
      bool checkerboardOffscreenLayers,
      bool showSemanticsDebugger,
      bool debugShowCheckedModeBanner});
}

/// @nodoc
class _$DebugOptionsCopyWithImpl<$Res> implements $DebugOptionsCopyWith<$Res> {
  _$DebugOptionsCopyWithImpl(this._value, this._then);

  final DebugOptions _value;
  // ignore: unused_field
  final $Res Function(DebugOptions) _then;

  @override
  $Res call({
    Object? showPerformanceOverlay = freezed,
    Object? debugShowMaterialGrid = freezed,
    Object? checkerboardRasterCacheImages = freezed,
    Object? checkerboardOffscreenLayers = freezed,
    Object? showSemanticsDebugger = freezed,
    Object? debugShowCheckedModeBanner = freezed,
  }) {
    return _then(_value.copyWith(
      showPerformanceOverlay: showPerformanceOverlay == freezed
          ? _value.showPerformanceOverlay
          : showPerformanceOverlay // ignore: cast_nullable_to_non_nullable
              as bool,
      debugShowMaterialGrid: debugShowMaterialGrid == freezed
          ? _value.debugShowMaterialGrid
          : debugShowMaterialGrid // ignore: cast_nullable_to_non_nullable
              as bool,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages == freezed
          ? _value.checkerboardRasterCacheImages
          : checkerboardRasterCacheImages // ignore: cast_nullable_to_non_nullable
              as bool,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers == freezed
          ? _value.checkerboardOffscreenLayers
          : checkerboardOffscreenLayers // ignore: cast_nullable_to_non_nullable
              as bool,
      showSemanticsDebugger: showSemanticsDebugger == freezed
          ? _value.showSemanticsDebugger
          : showSemanticsDebugger // ignore: cast_nullable_to_non_nullable
              as bool,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner == freezed
          ? _value.debugShowCheckedModeBanner
          : debugShowCheckedModeBanner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DebugOptionsCopyWith<$Res>
    implements $DebugOptionsCopyWith<$Res> {
  factory _$DebugOptionsCopyWith(
          _DebugOptions value, $Res Function(_DebugOptions) then) =
      __$DebugOptionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showPerformanceOverlay,
      bool debugShowMaterialGrid,
      bool checkerboardRasterCacheImages,
      bool checkerboardOffscreenLayers,
      bool showSemanticsDebugger,
      bool debugShowCheckedModeBanner});
}

/// @nodoc
class __$DebugOptionsCopyWithImpl<$Res> extends _$DebugOptionsCopyWithImpl<$Res>
    implements _$DebugOptionsCopyWith<$Res> {
  __$DebugOptionsCopyWithImpl(
      _DebugOptions _value, $Res Function(_DebugOptions) _then)
      : super(_value, (v) => _then(v as _DebugOptions));

  @override
  _DebugOptions get _value => super._value as _DebugOptions;

  @override
  $Res call({
    Object? showPerformanceOverlay = freezed,
    Object? debugShowMaterialGrid = freezed,
    Object? checkerboardRasterCacheImages = freezed,
    Object? checkerboardOffscreenLayers = freezed,
    Object? showSemanticsDebugger = freezed,
    Object? debugShowCheckedModeBanner = freezed,
  }) {
    return _then(_DebugOptions(
      showPerformanceOverlay: showPerformanceOverlay == freezed
          ? _value.showPerformanceOverlay
          : showPerformanceOverlay // ignore: cast_nullable_to_non_nullable
              as bool,
      debugShowMaterialGrid: debugShowMaterialGrid == freezed
          ? _value.debugShowMaterialGrid
          : debugShowMaterialGrid // ignore: cast_nullable_to_non_nullable
              as bool,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages == freezed
          ? _value.checkerboardRasterCacheImages
          : checkerboardRasterCacheImages // ignore: cast_nullable_to_non_nullable
              as bool,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers == freezed
          ? _value.checkerboardOffscreenLayers
          : checkerboardOffscreenLayers // ignore: cast_nullable_to_non_nullable
              as bool,
      showSemanticsDebugger: showSemanticsDebugger == freezed
          ? _value.showSemanticsDebugger
          : showSemanticsDebugger // ignore: cast_nullable_to_non_nullable
              as bool,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner == freezed
          ? _value.debugShowCheckedModeBanner
          : debugShowCheckedModeBanner // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DebugOptions implements _DebugOptions {
  const _$_DebugOptions(
      {this.showPerformanceOverlay = false,
      this.debugShowMaterialGrid = false,
      this.checkerboardRasterCacheImages = false,
      this.checkerboardOffscreenLayers = false,
      this.showSemanticsDebugger = false,
      this.debugShowCheckedModeBanner = false});

  factory _$_DebugOptions.fromJson(Map<String, dynamic> json) =>
      _$$_DebugOptionsFromJson(json);

  @JsonKey()
  @override
  final bool showPerformanceOverlay;
  @JsonKey()
  @override
  final bool debugShowMaterialGrid;
  @JsonKey()
  @override
  final bool checkerboardRasterCacheImages;
  @JsonKey()
  @override
  final bool checkerboardOffscreenLayers;
  @JsonKey()
  @override
  final bool showSemanticsDebugger;
  @JsonKey()
  @override
  final bool debugShowCheckedModeBanner;

  @override
  String toString() {
    return 'DebugOptions(showPerformanceOverlay: $showPerformanceOverlay, debugShowMaterialGrid: $debugShowMaterialGrid, checkerboardRasterCacheImages: $checkerboardRasterCacheImages, checkerboardOffscreenLayers: $checkerboardOffscreenLayers, showSemanticsDebugger: $showSemanticsDebugger, debugShowCheckedModeBanner: $debugShowCheckedModeBanner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DebugOptions &&
            const DeepCollectionEquality()
                .equals(other.showPerformanceOverlay, showPerformanceOverlay) &&
            const DeepCollectionEquality()
                .equals(other.debugShowMaterialGrid, debugShowMaterialGrid) &&
            const DeepCollectionEquality().equals(
                other.checkerboardRasterCacheImages,
                checkerboardRasterCacheImages) &&
            const DeepCollectionEquality().equals(
                other.checkerboardOffscreenLayers,
                checkerboardOffscreenLayers) &&
            const DeepCollectionEquality()
                .equals(other.showSemanticsDebugger, showSemanticsDebugger) &&
            const DeepCollectionEquality().equals(
                other.debugShowCheckedModeBanner, debugShowCheckedModeBanner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showPerformanceOverlay),
      const DeepCollectionEquality().hash(debugShowMaterialGrid),
      const DeepCollectionEquality().hash(checkerboardRasterCacheImages),
      const DeepCollectionEquality().hash(checkerboardOffscreenLayers),
      const DeepCollectionEquality().hash(showSemanticsDebugger),
      const DeepCollectionEquality().hash(debugShowCheckedModeBanner));

  @JsonKey(ignore: true)
  @override
  _$DebugOptionsCopyWith<_DebugOptions> get copyWith =>
      __$DebugOptionsCopyWithImpl<_DebugOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebugOptionsToJson(this);
  }
}

abstract class _DebugOptions implements DebugOptions {
  const factory _DebugOptions(
      {bool showPerformanceOverlay,
      bool debugShowMaterialGrid,
      bool checkerboardRasterCacheImages,
      bool checkerboardOffscreenLayers,
      bool showSemanticsDebugger,
      bool debugShowCheckedModeBanner}) = _$_DebugOptions;

  factory _DebugOptions.fromJson(Map<String, dynamic> json) =
      _$_DebugOptions.fromJson;

  @override
  bool get showPerformanceOverlay;
  @override
  bool get debugShowMaterialGrid;
  @override
  bool get checkerboardRasterCacheImages;
  @override
  bool get checkerboardOffscreenLayers;
  @override
  bool get showSemanticsDebugger;
  @override
  bool get debugShowCheckedModeBanner;
  @override
  @JsonKey(ignore: true)
  _$DebugOptionsCopyWith<_DebugOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

DebugPaintOptions _$DebugPaintOptionsFromJson(Map<String, dynamic> json) {
  return _DebugPaintOptions.fromJson(json);
}

/// @nodoc
class _$DebugPaintOptionsTearOff {
  const _$DebugPaintOptionsTearOff();

  _DebugPaintOptions call(
      {bool debugPaintSizeEnabled = false,
      bool debugPaintBaselinesEnabled = false,
      bool debugPaintPointersEnabled = false,
      bool debugPaintLayerBordersEnabled = false,
      bool debugRepaintRainbowEnabled = false}) {
    return _DebugPaintOptions(
      debugPaintSizeEnabled: debugPaintSizeEnabled,
      debugPaintBaselinesEnabled: debugPaintBaselinesEnabled,
      debugPaintPointersEnabled: debugPaintPointersEnabled,
      debugPaintLayerBordersEnabled: debugPaintLayerBordersEnabled,
      debugRepaintRainbowEnabled: debugRepaintRainbowEnabled,
    );
  }

  DebugPaintOptions fromJson(Map<String, Object?> json) {
    return DebugPaintOptions.fromJson(json);
  }
}

/// @nodoc
const $DebugPaintOptions = _$DebugPaintOptionsTearOff();

/// @nodoc
mixin _$DebugPaintOptions {
  bool get debugPaintSizeEnabled => throw _privateConstructorUsedError;
  bool get debugPaintBaselinesEnabled => throw _privateConstructorUsedError;
  bool get debugPaintPointersEnabled => throw _privateConstructorUsedError;
  bool get debugPaintLayerBordersEnabled => throw _privateConstructorUsedError;
  bool get debugRepaintRainbowEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DebugPaintOptionsCopyWith<DebugPaintOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebugPaintOptionsCopyWith<$Res> {
  factory $DebugPaintOptionsCopyWith(
          DebugPaintOptions value, $Res Function(DebugPaintOptions) then) =
      _$DebugPaintOptionsCopyWithImpl<$Res>;
  $Res call(
      {bool debugPaintSizeEnabled,
      bool debugPaintBaselinesEnabled,
      bool debugPaintPointersEnabled,
      bool debugPaintLayerBordersEnabled,
      bool debugRepaintRainbowEnabled});
}

/// @nodoc
class _$DebugPaintOptionsCopyWithImpl<$Res>
    implements $DebugPaintOptionsCopyWith<$Res> {
  _$DebugPaintOptionsCopyWithImpl(this._value, this._then);

  final DebugPaintOptions _value;
  // ignore: unused_field
  final $Res Function(DebugPaintOptions) _then;

  @override
  $Res call({
    Object? debugPaintSizeEnabled = freezed,
    Object? debugPaintBaselinesEnabled = freezed,
    Object? debugPaintPointersEnabled = freezed,
    Object? debugPaintLayerBordersEnabled = freezed,
    Object? debugRepaintRainbowEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      debugPaintSizeEnabled: debugPaintSizeEnabled == freezed
          ? _value.debugPaintSizeEnabled
          : debugPaintSizeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      debugPaintBaselinesEnabled: debugPaintBaselinesEnabled == freezed
          ? _value.debugPaintBaselinesEnabled
          : debugPaintBaselinesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      debugPaintPointersEnabled: debugPaintPointersEnabled == freezed
          ? _value.debugPaintPointersEnabled
          : debugPaintPointersEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      debugPaintLayerBordersEnabled: debugPaintLayerBordersEnabled == freezed
          ? _value.debugPaintLayerBordersEnabled
          : debugPaintLayerBordersEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      debugRepaintRainbowEnabled: debugRepaintRainbowEnabled == freezed
          ? _value.debugRepaintRainbowEnabled
          : debugRepaintRainbowEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DebugPaintOptionsCopyWith<$Res>
    implements $DebugPaintOptionsCopyWith<$Res> {
  factory _$DebugPaintOptionsCopyWith(
          _DebugPaintOptions value, $Res Function(_DebugPaintOptions) then) =
      __$DebugPaintOptionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool debugPaintSizeEnabled,
      bool debugPaintBaselinesEnabled,
      bool debugPaintPointersEnabled,
      bool debugPaintLayerBordersEnabled,
      bool debugRepaintRainbowEnabled});
}

/// @nodoc
class __$DebugPaintOptionsCopyWithImpl<$Res>
    extends _$DebugPaintOptionsCopyWithImpl<$Res>
    implements _$DebugPaintOptionsCopyWith<$Res> {
  __$DebugPaintOptionsCopyWithImpl(
      _DebugPaintOptions _value, $Res Function(_DebugPaintOptions) _then)
      : super(_value, (v) => _then(v as _DebugPaintOptions));

  @override
  _DebugPaintOptions get _value => super._value as _DebugPaintOptions;

  @override
  $Res call({
    Object? debugPaintSizeEnabled = freezed,
    Object? debugPaintBaselinesEnabled = freezed,
    Object? debugPaintPointersEnabled = freezed,
    Object? debugPaintLayerBordersEnabled = freezed,
    Object? debugRepaintRainbowEnabled = freezed,
  }) {
    return _then(_DebugPaintOptions(
      debugPaintSizeEnabled: debugPaintSizeEnabled == freezed
          ? _value.debugPaintSizeEnabled
          : debugPaintSizeEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      debugPaintBaselinesEnabled: debugPaintBaselinesEnabled == freezed
          ? _value.debugPaintBaselinesEnabled
          : debugPaintBaselinesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      debugPaintPointersEnabled: debugPaintPointersEnabled == freezed
          ? _value.debugPaintPointersEnabled
          : debugPaintPointersEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      debugPaintLayerBordersEnabled: debugPaintLayerBordersEnabled == freezed
          ? _value.debugPaintLayerBordersEnabled
          : debugPaintLayerBordersEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      debugRepaintRainbowEnabled: debugRepaintRainbowEnabled == freezed
          ? _value.debugRepaintRainbowEnabled
          : debugRepaintRainbowEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DebugPaintOptions implements _DebugPaintOptions {
  const _$_DebugPaintOptions(
      {this.debugPaintSizeEnabled = false,
      this.debugPaintBaselinesEnabled = false,
      this.debugPaintPointersEnabled = false,
      this.debugPaintLayerBordersEnabled = false,
      this.debugRepaintRainbowEnabled = false});

  factory _$_DebugPaintOptions.fromJson(Map<String, dynamic> json) =>
      _$$_DebugPaintOptionsFromJson(json);

  @JsonKey()
  @override
  final bool debugPaintSizeEnabled;
  @JsonKey()
  @override
  final bool debugPaintBaselinesEnabled;
  @JsonKey()
  @override
  final bool debugPaintPointersEnabled;
  @JsonKey()
  @override
  final bool debugPaintLayerBordersEnabled;
  @JsonKey()
  @override
  final bool debugRepaintRainbowEnabled;

  @override
  String toString() {
    return 'DebugPaintOptions(debugPaintSizeEnabled: $debugPaintSizeEnabled, debugPaintBaselinesEnabled: $debugPaintBaselinesEnabled, debugPaintPointersEnabled: $debugPaintPointersEnabled, debugPaintLayerBordersEnabled: $debugPaintLayerBordersEnabled, debugRepaintRainbowEnabled: $debugRepaintRainbowEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DebugPaintOptions &&
            const DeepCollectionEquality()
                .equals(other.debugPaintSizeEnabled, debugPaintSizeEnabled) &&
            const DeepCollectionEquality().equals(
                other.debugPaintBaselinesEnabled, debugPaintBaselinesEnabled) &&
            const DeepCollectionEquality().equals(
                other.debugPaintPointersEnabled, debugPaintPointersEnabled) &&
            const DeepCollectionEquality().equals(
                other.debugPaintLayerBordersEnabled,
                debugPaintLayerBordersEnabled) &&
            const DeepCollectionEquality().equals(
                other.debugRepaintRainbowEnabled, debugRepaintRainbowEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(debugPaintSizeEnabled),
      const DeepCollectionEquality().hash(debugPaintBaselinesEnabled),
      const DeepCollectionEquality().hash(debugPaintPointersEnabled),
      const DeepCollectionEquality().hash(debugPaintLayerBordersEnabled),
      const DeepCollectionEquality().hash(debugRepaintRainbowEnabled));

  @JsonKey(ignore: true)
  @override
  _$DebugPaintOptionsCopyWith<_DebugPaintOptions> get copyWith =>
      __$DebugPaintOptionsCopyWithImpl<_DebugPaintOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DebugPaintOptionsToJson(this);
  }
}

abstract class _DebugPaintOptions implements DebugPaintOptions {
  const factory _DebugPaintOptions(
      {bool debugPaintSizeEnabled,
      bool debugPaintBaselinesEnabled,
      bool debugPaintPointersEnabled,
      bool debugPaintLayerBordersEnabled,
      bool debugRepaintRainbowEnabled}) = _$_DebugPaintOptions;

  factory _DebugPaintOptions.fromJson(Map<String, dynamic> json) =
      _$_DebugPaintOptions.fromJson;

  @override
  bool get debugPaintSizeEnabled;
  @override
  bool get debugPaintBaselinesEnabled;
  @override
  bool get debugPaintPointersEnabled;
  @override
  bool get debugPaintLayerBordersEnabled;
  @override
  bool get debugRepaintRainbowEnabled;
  @override
  @JsonKey(ignore: true)
  _$DebugPaintOptionsCopyWith<_DebugPaintOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
