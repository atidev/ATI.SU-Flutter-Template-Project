import 'package:injectable/injectable.dart';

/// Протокол для работы с репозиторием, отвечающим за состояния инициализации приложения
abstract class StartupRepository {
  void initialized();

  bool isInited();
}

/// Базовая реализация [StartupRepository]
@Singleton(as: StartupRepository)
class StartupRepositoryImpl implements StartupRepository {
  bool _isInited = false;

  @override
  void initialized() {
    _isInited = true;
  }

  @override
  bool isInited() => _isInited;
}
