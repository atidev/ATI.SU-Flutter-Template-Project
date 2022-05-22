// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_theme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppTheme {
  AppColorTheme get colorTheme => throw _privateConstructorUsedError;
  AppTextTheme get textTheme => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppThemeCopyWith<AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeCopyWith<$Res> {
  factory $AppThemeCopyWith(AppTheme value, $Res Function(AppTheme) then) =
      _$AppThemeCopyWithImpl<$Res>;
  $Res call({AppColorTheme colorTheme, AppTextTheme textTheme});
}

/// @nodoc
class _$AppThemeCopyWithImpl<$Res> implements $AppThemeCopyWith<$Res> {
  _$AppThemeCopyWithImpl(this._value, this._then);

  final AppTheme _value;
  // ignore: unused_field
  final $Res Function(AppTheme) _then;

  @override
  $Res call({
    Object? colorTheme = freezed,
    Object? textTheme = freezed,
  }) {
    return _then(_value.copyWith(
      colorTheme: colorTheme == freezed
          ? _value.colorTheme
          : colorTheme // ignore: cast_nullable_to_non_nullable
              as AppColorTheme,
      textTheme: textTheme == freezed
          ? _value.textTheme
          : textTheme // ignore: cast_nullable_to_non_nullable
              as AppTextTheme,
    ));
  }
}

/// @nodoc
abstract class _$$_AppThemeCopyWith<$Res> implements $AppThemeCopyWith<$Res> {
  factory _$$_AppThemeCopyWith(
          _$_AppTheme value, $Res Function(_$_AppTheme) then) =
      __$$_AppThemeCopyWithImpl<$Res>;
  @override
  $Res call({AppColorTheme colorTheme, AppTextTheme textTheme});
}

/// @nodoc
class __$$_AppThemeCopyWithImpl<$Res> extends _$AppThemeCopyWithImpl<$Res>
    implements _$$_AppThemeCopyWith<$Res> {
  __$$_AppThemeCopyWithImpl(
      _$_AppTheme _value, $Res Function(_$_AppTheme) _then)
      : super(_value, (v) => _then(v as _$_AppTheme));

  @override
  _$_AppTheme get _value => super._value as _$_AppTheme;

  @override
  $Res call({
    Object? colorTheme = freezed,
    Object? textTheme = freezed,
  }) {
    return _then(_$_AppTheme(
      colorTheme: colorTheme == freezed
          ? _value.colorTheme
          : colorTheme // ignore: cast_nullable_to_non_nullable
              as AppColorTheme,
      textTheme: textTheme == freezed
          ? _value.textTheme
          : textTheme // ignore: cast_nullable_to_non_nullable
              as AppTextTheme,
    ));
  }
}

/// @nodoc

class _$_AppTheme implements _AppTheme {
  const _$_AppTheme({required this.colorTheme, required this.textTheme});

  @override
  final AppColorTheme colorTheme;
  @override
  final AppTextTheme textTheme;

  @override
  String toString() {
    return 'AppTheme(colorTheme: $colorTheme, textTheme: $textTheme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppTheme &&
            const DeepCollectionEquality()
                .equals(other.colorTheme, colorTheme) &&
            const DeepCollectionEquality().equals(other.textTheme, textTheme));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(colorTheme),
      const DeepCollectionEquality().hash(textTheme));

  @JsonKey(ignore: true)
  @override
  _$$_AppThemeCopyWith<_$_AppTheme> get copyWith =>
      __$$_AppThemeCopyWithImpl<_$_AppTheme>(this, _$identity);
}

abstract class _AppTheme implements AppTheme {
  const factory _AppTheme(
      {required final AppColorTheme colorTheme,
      required final AppTextTheme textTheme}) = _$_AppTheme;

  @override
  AppColorTheme get colorTheme => throw _privateConstructorUsedError;
  @override
  AppTextTheme get textTheme => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AppThemeCopyWith<_$_AppTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppThemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setDarkTheme,
    required TResult Function() setLightTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? setDarkTheme,
    TResult Function()? setLightTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setDarkTheme,
    TResult Function()? setLightTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeEventSetDarkTheme value) setDarkTheme,
    required TResult Function(AppThemeEventSetLightTheme value) setLightTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppThemeEventSetDarkTheme value)? setDarkTheme,
    TResult Function(AppThemeEventSetLightTheme value)? setLightTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeEventSetDarkTheme value)? setDarkTheme,
    TResult Function(AppThemeEventSetLightTheme value)? setLightTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppThemeEventCopyWith<$Res> {
  factory $AppThemeEventCopyWith(
          AppThemeEvent value, $Res Function(AppThemeEvent) then) =
      _$AppThemeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppThemeEventCopyWithImpl<$Res>
    implements $AppThemeEventCopyWith<$Res> {
  _$AppThemeEventCopyWithImpl(this._value, this._then);

  final AppThemeEvent _value;
  // ignore: unused_field
  final $Res Function(AppThemeEvent) _then;
}

/// @nodoc
abstract class _$$AppThemeEventSetDarkThemeCopyWith<$Res> {
  factory _$$AppThemeEventSetDarkThemeCopyWith(
          _$AppThemeEventSetDarkTheme value,
          $Res Function(_$AppThemeEventSetDarkTheme) then) =
      __$$AppThemeEventSetDarkThemeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeEventSetDarkThemeCopyWithImpl<$Res>
    extends _$AppThemeEventCopyWithImpl<$Res>
    implements _$$AppThemeEventSetDarkThemeCopyWith<$Res> {
  __$$AppThemeEventSetDarkThemeCopyWithImpl(_$AppThemeEventSetDarkTheme _value,
      $Res Function(_$AppThemeEventSetDarkTheme) _then)
      : super(_value, (v) => _then(v as _$AppThemeEventSetDarkTheme));

  @override
  _$AppThemeEventSetDarkTheme get _value =>
      super._value as _$AppThemeEventSetDarkTheme;
}

/// @nodoc

class _$AppThemeEventSetDarkTheme implements AppThemeEventSetDarkTheme {
  const _$AppThemeEventSetDarkTheme();

  @override
  String toString() {
    return 'AppThemeEvent.setDarkTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeEventSetDarkTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setDarkTheme,
    required TResult Function() setLightTheme,
  }) {
    return setDarkTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? setDarkTheme,
    TResult Function()? setLightTheme,
  }) {
    return setDarkTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setDarkTheme,
    TResult Function()? setLightTheme,
    required TResult orElse(),
  }) {
    if (setDarkTheme != null) {
      return setDarkTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeEventSetDarkTheme value) setDarkTheme,
    required TResult Function(AppThemeEventSetLightTheme value) setLightTheme,
  }) {
    return setDarkTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppThemeEventSetDarkTheme value)? setDarkTheme,
    TResult Function(AppThemeEventSetLightTheme value)? setLightTheme,
  }) {
    return setDarkTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeEventSetDarkTheme value)? setDarkTheme,
    TResult Function(AppThemeEventSetLightTheme value)? setLightTheme,
    required TResult orElse(),
  }) {
    if (setDarkTheme != null) {
      return setDarkTheme(this);
    }
    return orElse();
  }
}

abstract class AppThemeEventSetDarkTheme implements AppThemeEvent {
  const factory AppThemeEventSetDarkTheme() = _$AppThemeEventSetDarkTheme;
}

/// @nodoc
abstract class _$$AppThemeEventSetLightThemeCopyWith<$Res> {
  factory _$$AppThemeEventSetLightThemeCopyWith(
          _$AppThemeEventSetLightTheme value,
          $Res Function(_$AppThemeEventSetLightTheme) then) =
      __$$AppThemeEventSetLightThemeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppThemeEventSetLightThemeCopyWithImpl<$Res>
    extends _$AppThemeEventCopyWithImpl<$Res>
    implements _$$AppThemeEventSetLightThemeCopyWith<$Res> {
  __$$AppThemeEventSetLightThemeCopyWithImpl(
      _$AppThemeEventSetLightTheme _value,
      $Res Function(_$AppThemeEventSetLightTheme) _then)
      : super(_value, (v) => _then(v as _$AppThemeEventSetLightTheme));

  @override
  _$AppThemeEventSetLightTheme get _value =>
      super._value as _$AppThemeEventSetLightTheme;
}

/// @nodoc

class _$AppThemeEventSetLightTheme implements AppThemeEventSetLightTheme {
  const _$AppThemeEventSetLightTheme();

  @override
  String toString() {
    return 'AppThemeEvent.setLightTheme()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppThemeEventSetLightTheme);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() setDarkTheme,
    required TResult Function() setLightTheme,
  }) {
    return setLightTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? setDarkTheme,
    TResult Function()? setLightTheme,
  }) {
    return setLightTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? setDarkTheme,
    TResult Function()? setLightTheme,
    required TResult orElse(),
  }) {
    if (setLightTheme != null) {
      return setLightTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppThemeEventSetDarkTheme value) setDarkTheme,
    required TResult Function(AppThemeEventSetLightTheme value) setLightTheme,
  }) {
    return setLightTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppThemeEventSetDarkTheme value)? setDarkTheme,
    TResult Function(AppThemeEventSetLightTheme value)? setLightTheme,
  }) {
    return setLightTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppThemeEventSetDarkTheme value)? setDarkTheme,
    TResult Function(AppThemeEventSetLightTheme value)? setLightTheme,
    required TResult orElse(),
  }) {
    if (setLightTheme != null) {
      return setLightTheme(this);
    }
    return orElse();
  }
}

abstract class AppThemeEventSetLightTheme implements AppThemeEvent {
  const factory AppThemeEventSetLightTheme() = _$AppThemeEventSetLightTheme;
}
