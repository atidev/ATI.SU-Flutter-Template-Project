import 'dart:async';
import 'package:ati_su_flutter_template_project/arch/sr_bloc/sr_bloc.dart';
import 'package:ati_su_flutter_template_project/features/auth/domain/auth_interactor.dart';
import 'package:ati_su_flutter_template_project/features/auth/presentation/bloc/login_bloc_models.dart';
import 'package:ati_su_flutter_template_project/generated/locale_export.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

/// Логический компонент для работы со страницей логин
@injectable
class LoginBloc extends SrBloc<LoginEvent, LoginState, LoginSR> {
  final AuthInteractor _authInteractor;

  LoginBloc(
    this._authInteractor,
  ) : super(const LoginState.empty()) {
    on<LoginEventInit>(_init);

    on<LoginEventAuthorize>(_authorize);
  }

  FutureOr<void> _init(LoginEventInit event, Emitter<LoginState> emit) async {
    emit(LoginState.data(loginButtonText: LocaleKeys.login_action.tr()));
  }

  FutureOr<void> _authorize(LoginEventAuthorize event, Emitter<LoginState> emit) async {
    if (await _authInteractor.authorize()) {
      addSr(const LoginSR.success());
    } else {
      addSr(LoginSR.showSnackbar(text: LocaleKeys.error_common.tr()));
    }
  }
}
