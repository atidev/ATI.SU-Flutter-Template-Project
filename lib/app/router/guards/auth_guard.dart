import 'package:ati_su_flutter_template_project/app/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

typedef IsAuthorized = bool Function();

/// Интерцептор роутинга ограничивающий доступ неавторизованным пользователям
///
/// Заменяет страницу, которая охраняется текущим гвардом, на LoginPage, в случае если пользователь не авторизован
class AuthGuard extends AutoRedirectGuard {
  @protected
  final IsAuthorized isAuthorized;

  AuthGuard({
    required this.isAuthorized,
  });

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (!isAuthorized()) {
      router.push(LoginRoute(onAuthSuccess: () => resolver.next()));
    } else {
      resolver.next();
    }
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async => true;
}
