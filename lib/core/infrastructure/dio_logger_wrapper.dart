import 'package:logger/logger.dart';

/// Прослойка над логгером, используемая в [PrettyDioLogger] для логирования через [logger]
class DioLoggerWrapper {
  final Logger logger;

  DioLoggerWrapper(this.logger);

  void logPrint(Object o) => logger.d(o);
}
