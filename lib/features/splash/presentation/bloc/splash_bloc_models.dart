import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_bloc_models.freezed.dart';

class SplashState {}

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.init() = SplashEventInit;
}

@freezed
class SplashSR with _$SplashSR {
  const factory SplashSR.loadFinished() = _LoadFinished;
}
