// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_TimeModelCopyWith<$Res> implements $TimeModelCopyWith<$Res> {
  factory _$$_TimeModelCopyWith(
          _$_TimeModel value, $Res Function(_$_TimeModel) then) =
      __$$_TimeModelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime currentDateTime});
}

/// @nodoc
class __$$_TimeModelCopyWithImpl<$Res> extends _$TimeModelCopyWithImpl<$Res>
    implements _$$_TimeModelCopyWith<$Res> {
  __$$_TimeModelCopyWithImpl(
      _$_TimeModel _value, $Res Function(_$_TimeModel) _then)
      : super(_value, (v) => _then(v as _$_TimeModel));

  @override
  _$_TimeModel get _value => super._value as _$_TimeModel;

  @override
  $Res call({
    Object? currentDateTime = freezed,
  }) {
    return _then(_$_TimeModel(
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
            other is _$_TimeModel &&
            const DeepCollectionEquality()
                .equals(other.currentDateTime, currentDateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentDateTime));

  @JsonKey(ignore: true)
  @override
  _$$_TimeModelCopyWith<_$_TimeModel> get copyWith =>
      __$$_TimeModelCopyWithImpl<_$_TimeModel>(this, _$identity);
}

abstract class _TimeModel implements TimeModel {
  const factory _TimeModel({required final DateTime currentDateTime}) =
      _$_TimeModel;

  @override
  DateTime get currentDateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimeModelCopyWith<_$_TimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeResponse _$TimeResponseFromJson(Map<String, dynamic> json) {
  return _TimeResponse.fromJson(json);
}

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
abstract class _$$_TimeResponseCopyWith<$Res>
    implements $TimeResponseCopyWith<$Res> {
  factory _$$_TimeResponseCopyWith(
          _$_TimeResponse value, $Res Function(_$_TimeResponse) then) =
      __$$_TimeResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'currentDateTime') DateTime currentDateTime,
      @JsonKey(name: 'serviceResponse') Map<String, dynamic>? serviceResponse});
}

/// @nodoc
class __$$_TimeResponseCopyWithImpl<$Res>
    extends _$TimeResponseCopyWithImpl<$Res>
    implements _$$_TimeResponseCopyWith<$Res> {
  __$$_TimeResponseCopyWithImpl(
      _$_TimeResponse _value, $Res Function(_$_TimeResponse) _then)
      : super(_value, (v) => _then(v as _$_TimeResponse));

  @override
  _$_TimeResponse get _value => super._value as _$_TimeResponse;

  @override
  $Res call({
    Object? currentDateTime = freezed,
    Object? serviceResponse = freezed,
  }) {
    return _then(_$_TimeResponse(
      currentDateTime: currentDateTime == freezed
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      serviceResponse: serviceResponse == freezed
          ? _value._serviceResponse
          : serviceResponse // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimeResponse implements _TimeResponse {
  const _$_TimeResponse(
      {@JsonKey(name: 'currentDateTime')
          required this.currentDateTime,
      @JsonKey(name: 'serviceResponse')
          required final Map<String, dynamic>? serviceResponse})
      : _serviceResponse = serviceResponse;

  factory _$_TimeResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TimeResponseFromJson(json);

  @override
  @JsonKey(name: 'currentDateTime')
  final DateTime currentDateTime;
  final Map<String, dynamic>? _serviceResponse;
  @override
  @JsonKey(name: 'serviceResponse')
  Map<String, dynamic>? get serviceResponse {
    final value = _serviceResponse;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TimeResponse(currentDateTime: $currentDateTime, serviceResponse: $serviceResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeResponse &&
            const DeepCollectionEquality()
                .equals(other.currentDateTime, currentDateTime) &&
            const DeepCollectionEquality()
                .equals(other._serviceResponse, _serviceResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentDateTime),
      const DeepCollectionEquality().hash(_serviceResponse));

  @JsonKey(ignore: true)
  @override
  _$$_TimeResponseCopyWith<_$_TimeResponse> get copyWith =>
      __$$_TimeResponseCopyWithImpl<_$_TimeResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeResponseToJson(this);
  }
}

abstract class _TimeResponse implements TimeResponse {
  const factory _TimeResponse(
          {@JsonKey(name: 'currentDateTime')
              required final DateTime currentDateTime,
          @JsonKey(name: 'serviceResponse')
              required final Map<String, dynamic>? serviceResponse}) =
      _$_TimeResponse;

  factory _TimeResponse.fromJson(Map<String, dynamic> json) =
      _$_TimeResponse.fromJson;

  @override
  @JsonKey(name: 'currentDateTime')
  DateTime get currentDateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'serviceResponse')
  Map<String, dynamic>? get serviceResponse =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimeResponseCopyWith<_$_TimeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
