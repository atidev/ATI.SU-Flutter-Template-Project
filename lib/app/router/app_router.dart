import 'package:ati_su_flutter_template_project/app/router/guards/auth_guard.dart';
import 'package:ati_su_flutter_template_project/app/router/guards/init_guard.dart';
import 'package:ati_su_flutter_template_project/features/auth/presentation/ui/login_page.dart';
import 'package:ati_su_flutter_template_project/features/main_page/presentation/ui/main_page.dart';
import 'package:ati_su_flutter_template_project/features/not_found/not_found_page.dart';
import 'package:ati_su_flutter_template_project/features/splash/presentation/ui/splash_page.dart';
import 'package:auto_route/auto_route.dart';

export 'app_router.gr.dart';

/// Роутер приложения
@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage),
    AutoRoute(
      path: '/main',
      page: MainPage,
      initial: true,
      guards: [AuthGuard, InitGuard],
    ),
    AutoRoute(
      path: '/login',
      page: LoginPage,
      guards: [InitGuard],
    ),
    AutoRoute(
      path: '*',
      page: NotFoundPage,
      guards: [InitGuard],
    ),
  ],
)
class $AppRouter {}
