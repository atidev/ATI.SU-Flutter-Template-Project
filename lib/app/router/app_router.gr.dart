// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:ati_su_flutter_template_project/app/router/guards/auth_guard.dart'
    as _i7;
import 'package:ati_su_flutter_template_project/app/router/guards/init_guard.dart'
    as _i8;
import 'package:ati_su_flutter_template_project/features/auth/presentation/ui/login_page.dart'
    as _i3;
import 'package:ati_su_flutter_template_project/features/main_page/presentation/ui/main_page.dart'
    as _i2;
import 'package:ati_su_flutter_template_project/features/not_found/not_found_page.dart'
    as _i4;
import 'package:ati_su_flutter_template_project/features/splash/presentation/ui/splash_page.dart'
    as _i1;
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

class AppRouter extends _i5.RootStackRouter {
  AppRouter(
      {_i6.GlobalKey<_i6.NavigatorState>? navigatorKey,
      required this.authGuard,
      required this.initGuard})
      : super(navigatorKey);

  final _i7.AuthGuard authGuard;

  final _i8.InitGuard initGuard;

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i1.SplashPage(onLoad: args.onLoad, key: args.key));
    },
    MainRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.MainPage());
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child:
              _i3.LoginPage(onAuthSuccess: args.onAuthSuccess, key: args.key));
    },
    NotFoundRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.NotFoundPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig('/#redirect',
            path: '/', redirectTo: '/main', fullMatch: true),
        _i5.RouteConfig(SplashRoute.name, path: '/splash-page'),
        _i5.RouteConfig(MainRoute.name,
            path: '/main', guards: [authGuard, initGuard]),
        _i5.RouteConfig(LoginRoute.name, path: '/login', guards: [initGuard]),
        _i5.RouteConfig(NotFoundRoute.name, path: '*', guards: [initGuard])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({void Function()? onLoad, _i6.Key? key})
      : super(SplashRoute.name,
            path: '/splash-page',
            args: SplashRouteArgs(onLoad: onLoad, key: key));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.onLoad, this.key});

  final void Function()? onLoad;

  final _i6.Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{onLoad: $onLoad, key: $key}';
  }
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: '/main');

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({void Function()? onAuthSuccess, _i6.Key? key})
      : super(LoginRoute.name,
            path: '/login',
            args: LoginRouteArgs(onAuthSuccess: onAuthSuccess, key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.onAuthSuccess, this.key});

  final void Function()? onAuthSuccess;

  final _i6.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{onAuthSuccess: $onAuthSuccess, key: $key}';
  }
}

/// generated route for
/// [_i4.NotFoundPage]
class NotFoundRoute extends _i5.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '*');

  static const String name = 'NotFoundRoute';
}
