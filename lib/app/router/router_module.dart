import 'package:ati_su_flutter_template_project/app/router/app_router.dart';
import 'package:ati_su_flutter_template_project/app/router/guards/auth_guard.dart';
import 'package:ati_su_flutter_template_project/app/router/guards/init_guard.dart';
import 'package:ati_su_flutter_template_project/app/router/router_logging_observer.dart';
import 'package:ati_su_flutter_template_project/core/user/user_repository.dart';
import 'package:ati_su_flutter_template_project/features/splash/data/startup_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

/// Модуль, формирующий сущности для роутинга
@module
abstract class RouterModule {
  @singleton
  AppRouter appRouter(
    AuthGuard authGuard,
    InitGuard initGuard,
  ) {
    return AppRouter(
      authGuard: authGuard,
      initGuard: initGuard,
    );
  }

  @singleton
  AuthGuard authGuard(UserRepository userRepository) => AuthGuard(isAuthorized: userRepository.isAuthorized);

  @singleton
  InitGuard initGuard(StartupRepository startupRepository) => InitGuard(isInited: startupRepository.isInited);

  @injectable
  RouterLoggingObserver routerLoggingObserver(
    Logger logger,
    AppRouter appRouter,
  ) {
    return RouterLoggingObserver(
      logger: logger,
      appRouter: appRouter,
    );
  }
}
