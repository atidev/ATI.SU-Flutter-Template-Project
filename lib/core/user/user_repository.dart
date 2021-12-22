import 'dart:async';

import 'package:injectable/injectable.dart';

/// Заглушка-реализация репозитория пользователей
abstract class UserRepository {
  bool isAuthorized();
  Stream<bool> authStream();

  void authorize();

  void unAuthorize();
}

@Singleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final StreamController<bool> _authController = StreamController.broadcast();
  bool _isAuthorized = false;

  @override
  bool isAuthorized() => _isAuthorized;

  @override
  Stream<bool> authStream() => _authController.stream;

  @override
  void authorize() {
    _isAuthorized = true;
    _authController.add(_isAuthorized);
  }

  @override
  void unAuthorize() {
    _isAuthorized = false;
    _authController.add(_isAuthorized);
  }
}
