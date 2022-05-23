import 'package:ati_su_flutter_template_project/app/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

typedef IsInited = bool Function();

/// Интерцептор роутинга ограничивающий доступ к страницам до их инициализации
///
/// Добавляет в стэк Splash-Screen при попытке перехода на страницу, защищенную этим гвардом, до инициализации приложения
class InitGuard extends AutoRedirectGuard {
  @protected
  final IsInited isInited;

  InitGuard({
    required this.isInited,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!isInited()) {
      router.push(SplashRoute(onLoad: () => resolver.next()));
    } else {
      resolver.next();
    }
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async => isInited();
}
