import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc_models.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.authorize() = LoginEventAuthorize;

  const factory LoginEvent.init() = LoginEventInit;
}

@freezed
class LoginSR with _$LoginSR {
  const factory LoginSR.success() = _Success;

  const factory LoginSR.showSnackbar({required String text}) = _ShowSnackbar;
}

@freezed
class LoginState with _$LoginState {
  LoginStateData get data => this as LoginStateData;

  const LoginState._();

  const factory LoginState.data({
    required String loginButtonText,
  }) = LoginStateData;

  const factory LoginState.empty() = _Empty;
}
