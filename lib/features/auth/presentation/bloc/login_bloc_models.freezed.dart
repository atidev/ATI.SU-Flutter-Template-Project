// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  LoginEventAuthorize authorize() {
    return const LoginEventAuthorize();
  }

  LoginEventInit init() {
    return const LoginEventInit();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventAuthorize value) authorize,
    required TResult Function(LoginEventInit value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventInit value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventInit value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class $LoginEventAuthorizeCopyWith<$Res> {
  factory $LoginEventAuthorizeCopyWith(
          LoginEventAuthorize value, $Res Function(LoginEventAuthorize) then) =
      _$LoginEventAuthorizeCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventAuthorizeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventAuthorizeCopyWith<$Res> {
  _$LoginEventAuthorizeCopyWithImpl(
      LoginEventAuthorize _value, $Res Function(LoginEventAuthorize) _then)
      : super(_value, (v) => _then(v as LoginEventAuthorize));

  @override
  LoginEventAuthorize get _value => super._value as LoginEventAuthorize;
}

/// @nodoc

class _$LoginEventAuthorize implements LoginEventAuthorize {
  const _$LoginEventAuthorize();

  @override
  String toString() {
    return 'LoginEvent.authorize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginEventAuthorize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() init,
  }) {
    return authorize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? init,
  }) {
    return authorize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventAuthorize value) authorize,
    required TResult Function(LoginEventInit value) init,
  }) {
    return authorize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventInit value)? init,
  }) {
    return authorize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventInit value)? init,
    required TResult orElse(),
  }) {
    if (authorize != null) {
      return authorize(this);
    }
    return orElse();
  }
}

abstract class LoginEventAuthorize implements LoginEvent {
  const factory LoginEventAuthorize() = _$LoginEventAuthorize;
}

/// @nodoc
abstract class $LoginEventInitCopyWith<$Res> {
  factory $LoginEventInitCopyWith(
          LoginEventInit value, $Res Function(LoginEventInit) then) =
      _$LoginEventInitCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventInitCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventInitCopyWith<$Res> {
  _$LoginEventInitCopyWithImpl(
      LoginEventInit _value, $Res Function(LoginEventInit) _then)
      : super(_value, (v) => _then(v as LoginEventInit));

  @override
  LoginEventInit get _value => super._value as LoginEventInit;
}

/// @nodoc

class _$LoginEventInit implements LoginEventInit {
  const _$LoginEventInit();

  @override
  String toString() {
    return 'LoginEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginEventInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authorize,
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authorize,
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventAuthorize value) authorize,
    required TResult Function(LoginEventInit value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventInit value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventAuthorize value)? authorize,
    TResult Function(LoginEventInit value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class LoginEventInit implements LoginEvent {
  const factory LoginEventInit() = _$LoginEventInit;
}

/// @nodoc
class _$LoginSRTearOff {
  const _$LoginSRTearOff();

  _Success success() {
    return const _Success();
  }

  _ShowSnackbar showSnackbar({required String text}) {
    return _ShowSnackbar(
      text: text,
    );
  }
}

/// @nodoc
const $LoginSR = _$LoginSRTearOff();

/// @nodoc
mixin _$LoginSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String text) showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String text)? showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String text)? showSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_ShowSnackbar value) showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_ShowSnackbar value)? showSnackbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_ShowSnackbar value)? showSnackbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSRCopyWith<$Res> {
  factory $LoginSRCopyWith(LoginSR value, $Res Function(LoginSR) then) =
      _$LoginSRCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginSRCopyWithImpl<$Res> implements $LoginSRCopyWith<$Res> {
  _$LoginSRCopyWithImpl(this._value, this._then);

  final LoginSR _value;
  // ignore: unused_field
  final $Res Function(LoginSR) _then;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$LoginSRCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'LoginSR.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String text) showSnackbar,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String text)? showSnackbar,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String text)? showSnackbar,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_ShowSnackbar value) showSnackbar,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_ShowSnackbar value)? showSnackbar,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_ShowSnackbar value)? showSnackbar,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginSR {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$ShowSnackbarCopyWith<$Res> {
  factory _$ShowSnackbarCopyWith(
          _ShowSnackbar value, $Res Function(_ShowSnackbar) then) =
      __$ShowSnackbarCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$ShowSnackbarCopyWithImpl<$Res> extends _$LoginSRCopyWithImpl<$Res>
    implements _$ShowSnackbarCopyWith<$Res> {
  __$ShowSnackbarCopyWithImpl(
      _ShowSnackbar _value, $Res Function(_ShowSnackbar) _then)
      : super(_value, (v) => _then(v as _ShowSnackbar));

  @override
  _ShowSnackbar get _value => super._value as _ShowSnackbar;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_ShowSnackbar(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowSnackbar implements _ShowSnackbar {
  const _$_ShowSnackbar({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'LoginSR.showSnackbar(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowSnackbar &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$ShowSnackbarCopyWith<_ShowSnackbar> get copyWith =>
      __$ShowSnackbarCopyWithImpl<_ShowSnackbar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function(String text) showSnackbar,
  }) {
    return showSnackbar(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String text)? showSnackbar,
  }) {
    return showSnackbar?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function(String text)? showSnackbar,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
    required TResult Function(_ShowSnackbar value) showSnackbar,
  }) {
    return showSnackbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_ShowSnackbar value)? showSnackbar,
  }) {
    return showSnackbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    TResult Function(_ShowSnackbar value)? showSnackbar,
    required TResult orElse(),
  }) {
    if (showSnackbar != null) {
      return showSnackbar(this);
    }
    return orElse();
  }
}

abstract class _ShowSnackbar implements LoginSR {
  const factory _ShowSnackbar({required String text}) = _$_ShowSnackbar;

  String get text;
  @JsonKey(ignore: true)
  _$ShowSnackbarCopyWith<_ShowSnackbar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  LoginStateData data({required String loginButtonText}) {
    return LoginStateData(
      loginButtonText: loginButtonText,
    );
  }

  _Empty empty() {
    return const _Empty();
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loginButtonText) data,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String loginButtonText)? data,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loginButtonText)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateData value) data,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateData value)? data,
    TResult Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class $LoginStateDataCopyWith<$Res> {
  factory $LoginStateDataCopyWith(
          LoginStateData value, $Res Function(LoginStateData) then) =
      _$LoginStateDataCopyWithImpl<$Res>;
  $Res call({String loginButtonText});
}

/// @nodoc
class _$LoginStateDataCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateDataCopyWith<$Res> {
  _$LoginStateDataCopyWithImpl(
      LoginStateData _value, $Res Function(LoginStateData) _then)
      : super(_value, (v) => _then(v as LoginStateData));

  @override
  LoginStateData get _value => super._value as LoginStateData;

  @override
  $Res call({
    Object? loginButtonText = freezed,
  }) {
    return _then(LoginStateData(
      loginButtonText: loginButtonText == freezed
          ? _value.loginButtonText
          : loginButtonText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateData extends LoginStateData {
  const _$LoginStateData({required this.loginButtonText}) : super._();

  @override
  final String loginButtonText;

  @override
  String toString() {
    return 'LoginState.data(loginButtonText: $loginButtonText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginStateData &&
            const DeepCollectionEquality()
                .equals(other.loginButtonText, loginButtonText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(loginButtonText));

  @JsonKey(ignore: true)
  @override
  $LoginStateDataCopyWith<LoginStateData> get copyWith =>
      _$LoginStateDataCopyWithImpl<LoginStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loginButtonText) data,
    required TResult Function() empty,
  }) {
    return data(loginButtonText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String loginButtonText)? data,
    TResult Function()? empty,
  }) {
    return data?.call(loginButtonText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loginButtonText)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(loginButtonText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateData value)? data,
    TResult Function(_Empty value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class LoginStateData extends LoginState {
  const factory LoginStateData({required String loginButtonText}) =
      _$LoginStateData;
  const LoginStateData._() : super._();

  String get loginButtonText;
  @JsonKey(ignore: true)
  $LoginStateDataCopyWith<LoginStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty extends _Empty {
  const _$_Empty() : super._();

  @override
  String toString() {
    return 'LoginState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String loginButtonText) data,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String loginButtonText)? data,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String loginButtonText)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginStateData value)? data,
    TResult Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends LoginState {
  const factory _Empty() = _$_Empty;
  const _Empty._() : super._();
}
