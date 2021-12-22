// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimeModelTearOff {
  const _$TimeModelTearOff();

  _TimeModel call({required DateTime currentDateTime}) {
    return _TimeModel(
      currentDateTime: currentDateTime,
    );
  }
}

/// @nodoc
const $TimeModel = _$TimeModelTearOff();

/// @nodoc
mixin _$TimeModel {
  DateTime get currentDateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeModelCopyWith<TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeModelCopyWith<$Res> {
  factory $TimeModelCopyWith(TimeModel value, $Res Function(TimeModel) then) =
      _$TimeModelCopyWithImpl<$Res>;
  $Res call({DateTime currentDateTime});
}

/// @nodoc
class _$TimeModelCopyWithImpl<$Res> implements $TimeModelCopyWith<$Res> {
  _$TimeModelCopyWithImpl(this._value, this._then);

  final TimeModel _value;
  // ignore: unused_field
  final $Res Function(TimeModel) _then;

  @override
  $Res call({
    Object? currentDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      currentDateTime: currentDateTime == freezed
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$TimeModelCopyWith<$Res> implements $TimeModelCopyWith<$Res> {
  factory _$TimeModelCopyWith(
          _TimeModel value, $Res Function(_TimeModel) then) =
      __$TimeModelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime currentDateTime});
}

/// @nodoc
class __$TimeModelCopyWithImpl<$Res> extends _$TimeModelCopyWithImpl<$Res>
    implements _$TimeModelCopyWith<$Res> {
  __$TimeModelCopyWithImpl(_TimeModel _value, $Res Function(_TimeModel) _then)
      : super(_value, (v) => _then(v as _TimeModel));

  @override
  _TimeModel get _value => super._value as _TimeModel;

  @override
  $Res call({
    Object? currentDateTime = freezed,
  }) {
    return _then(_TimeModel(
      currentDateTime: currentDateTime == freezed
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_TimeModel implements _TimeModel {
  const _$_TimeModel({required this.currentDateTime});

  @override
  final DateTime currentDateTime;

  @override
  String toString() {
    return 'TimeModel(currentDateTime: $currentDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeModel &&
            const DeepCollectionEquality()
                .equals(other.currentDateTime, currentDateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentDateTime));

  @JsonKey(ignore: true)
  @override
  _$TimeModelCopyWith<_TimeModel> get copyWith =>
      __$TimeModelCopyWithImpl<_TimeModel>(this, _$identity);
}

abstract class _TimeModel implements TimeModel {
  const factory _TimeModel({required DateTime currentDateTime}) = _$_TimeModel;

  @override
  DateTime get currentDateTime;
  @override
  @JsonKey(ignore: true)
  _$TimeModelCopyWith<_TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeResponse _$TimeResponseFromJson(Map<String, dynamic> json) {
  return _TimeResponse.fromJson(json);
}

/// @nodoc
class _$TimeResponseTearOff {
  const _$TimeResponseTearOff();

  _TimeResponse call(
      {@JsonKey(name: 'currentDateTime')
          required DateTime currentDateTime,
      @JsonKey(name: 'serviceResponse')
          required Map<String, dynamic>? serviceResponse}) {
    return _TimeResponse(
      currentDateTime: currentDateTime,
      serviceResponse: serviceResponse,
    );
  }

  TimeResponse fromJson(Map<String, Object?> json) {
    return TimeResponse.fromJson(json);
  }
}

/// @nodoc
const $TimeResponse = _$TimeResponseTearOff();

/// @nodoc
mixin _$TimeResponse {
  @JsonKey(name: 'currentDateTime')
  DateTime get currentDateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'serviceResponse')
  Map<String, dynamic>? get serviceResponse =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeResponseCopyWith<TimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeResponseCopyWith<$Res> {
  factory $TimeResponseCopyWith(
          TimeResponse value, $Res Function(TimeResponse) then) =
      _$TimeResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'currentDateTime') DateTime currentDateTime,
      @JsonKey(name: 'serviceResponse') Map<String, dynamic>? serviceResponse});
}

/// @nodoc
class _$TimeResponseCopyWithImpl<$Res> implements $TimeResponseCopyWith<$Res> {
  _$TimeResponseCopyWithImpl(this._value, this._then);

  final TimeResponse _value;
  // ignore: unused_field
  final $Res Function(TimeResponse) _then;

  @override
  $Res call({
    Object? currentDateTime = freezed,
    Object? serviceResponse = freezed,
  }) {
    return _then(_value.copyWith(
      currentDateTime: currentDateTime == freezed
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      serviceResponse: serviceResponse == freezed
          ? _value.serviceResponse
          : serviceResponse // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$TimeResponseCopyWith<$Res>
    implements $TimeResponseCopyWith<$Res> {
  factory _$TimeResponseCopyWith(
          _TimeResponse value, $Res Function(_TimeResponse) then) =
      __$TimeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'currentDateTime') DateTime currentDateTime,
      @JsonKey(name: 'serviceResponse') Map<String, dynamic>? serviceResponse});
}

/// @nodoc
class __$TimeResponseCopyWithImpl<$Res> extends _$TimeResponseCopyWithImpl<$Res>
    implements _$TimeResponseCopyWith<$Res> {
  __$TimeResponseCopyWithImpl(
      _TimeResponse _value, $Res Function(_TimeResponse) _then)
      : super(_value, (v) => _then(v as _TimeResponse));

  @override
  _TimeResponse get _value => super._value as _TimeResponse;

  @override
  $Res call({
    Object? currentDateTime = freezed,
    Object? serviceResponse = freezed,
  }) {
    return _then(_TimeResponse(
      currentDateTime: currentDateTime == freezed
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      serviceResponse: serviceResponse == freezed
          ? _value.serviceResponse
          : serviceResponse // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeResponse implements _TimeResponse {
  const _$_TimeResponse(
      {@JsonKey(name: 'currentDateTime') required this.currentDateTime,
      @JsonKey(name: 'serviceResponse') required this.serviceResponse});

  factory _$_TimeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TimeResponseFromJson(json);

  @override
  @JsonKey(name: 'currentDateTime')
  final DateTime currentDateTime;
  @override
  @JsonKey(name: 'serviceResponse')
  final Map<String, dynamic>? serviceResponse;

  @override
  String toString() {
    return 'TimeResponse(currentDateTime: $currentDateTime, serviceResponse: $serviceResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeResponse &&
            const DeepCollectionEquality()
                .equals(other.currentDateTime, currentDateTime) &&
            const DeepCollectionEquality()
                .equals(other.serviceResponse, serviceResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentDateTime),
      const DeepCollectionEquality().hash(serviceResponse));

  @JsonKey(ignore: true)
  @override
  _$TimeResponseCopyWith<_TimeResponse> get copyWith =>
      __$TimeResponseCopyWithImpl<_TimeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeResponseToJson(this);
  }
}

abstract class _TimeResponse implements TimeResponse {
  const factory _TimeResponse(
      {@JsonKey(name: 'currentDateTime')
          required DateTime currentDateTime,
      @JsonKey(name: 'serviceResponse')
          required Map<String, dynamic>? serviceResponse}) = _$_TimeResponse;

  factory _TimeResponse.fromJson(Map<String, dynamic> json) =
      _$_TimeResponse.fromJson;

  @override
  @JsonKey(name: 'currentDateTime')
  DateTime get currentDateTime;
  @override
  @JsonKey(name: 'serviceResponse')
  Map<String, dynamic>? get serviceResponse;
  @override
  @JsonKey(ignore: true)
  _$TimeResponseCopyWith<_TimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
