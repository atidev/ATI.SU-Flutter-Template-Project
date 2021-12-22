import 'package:ati_su_flutter_template_project/arch/sr_bloc/sr_mixin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Реализация [SrBlocObserver] для логирования через [logger]
@singleton
class LoggerBlocObserver extends SrBlocObserver {
  final Logger logger;

  LoggerBlocObserver(this.logger);

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e('onError $bloc - $error \n $stackTrace');
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    logger.d('onEvent $bloc - $event');
  }

  @override
  // ignore: type_annotate_public_apis
  void onSr(Bloc bloc, sr) {
    super.onSr(bloc, sr);
    logger.d('onSr $bloc - $sr');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    logger.d('onTransition to state ${transition.nextState}');
  }
}
