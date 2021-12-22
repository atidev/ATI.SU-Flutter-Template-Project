// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimeResponse _$$_TimeResponseFromJson(Map<String, dynamic> json) =>
    _$_TimeResponse(
      currentDateTime: DateTime.parse(json['currentDateTime'] as String),
      serviceResponse: json['serviceResponse'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_TimeResponseToJson(_$_TimeResponse instance) =>
    <String, dynamic>{
      'currentDateTime': instance.currentDateTime.toIso8601String(),
      'serviceResponse': instance.serviceResponse,
    };
