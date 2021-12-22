import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_models.g.dart';
part 'time_models.freezed.dart';

/// Бизнес-модель для работы со временем
@freezed
class TimeModel with _$TimeModel {
  const factory TimeModel({
    required DateTime currentDateTime,
  }) = _TimeModel;
}

/// DTO класс, возвращающийся от сервера, в ответ на запрос текущего времени
@freezed
class TimeResponse with _$TimeResponse {
  const factory TimeResponse({
    @JsonKey(name: 'currentDateTime') required DateTime currentDateTime,
    @JsonKey(name: 'serviceResponse') required Map<String, dynamic>? serviceResponse,
  }) = _TimeResponse;

  factory TimeResponse.fromJson(Map<String, dynamic> json) => _$TimeResponseFromJson(json);
}
