import 'package:ati_su_flutter_template_project/core/user/user_repository.dart';
import 'package:injectable/injectable.dart';

/// Протокол для работы с интерактором выполняющим логику авторизации
abstract class AuthInteractor {
  Future<bool> authorize();
}

/// Базовая реализация [AuthInteractor]
@Singleton(as: AuthInteractor)
class AuthInteractorImpl implements AuthInteractor {
  final UserRepository _userRepository;

  AuthInteractorImpl(
    this._userRepository,
  );

  @override
  Future<bool> authorize() async {
    _userRepository.authorize();
    return true;
  }
}
