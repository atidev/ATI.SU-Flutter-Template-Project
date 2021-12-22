import 'package:easy_logger/easy_logger.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Сущнность объединяющая логгеры [Logger] и [EasyLogger]
/// Необходимо передать метод [log] в [EasyLocalizations]
@singleton
class EasyLoggerWrapper {
  final Logger _logger;

  EasyLoggerWrapper(this._logger);

  void log(
    Object object, {
    String? name,
    LevelMessages? level,
    StackTrace? stackTrace,
  }) {
    switch (level) {
      case LevelMessages.info:
        _logger.i('[$name] $object', null, stackTrace);
        break;
      case LevelMessages.warning:
        _logger.w('[$name] $object', null, stackTrace);
        break;
      case LevelMessages.error:
        _logger.e('[$name] $object', null, stackTrace);
        break;
      default:
        _logger.d('[$name] $object', null, stackTrace);
        break;
    }
  }

  void stubLog(
    Object object, {
    String? name,
    LevelMessages? level,
    StackTrace? stackTrace,
  }) {}
}
