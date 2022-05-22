import 'package:ati_su_flutter_template_project/app/app_environment.dart';
import 'package:ati_su_flutter_template_project/app/localizations.dart';
import 'package:ati_su_flutter_template_project/app/router/app_router.dart';
import 'package:ati_su_flutter_template_project/app/router/router_logging_observer.dart';
import 'package:ati_su_flutter_template_project/app/theme/app_theme_provider_widget.dart';
import 'package:ati_su_flutter_template_project/app/theme/bloc/app_theme.dart';
import 'package:ati_su_flutter_template_project/app/theme/bloc/app_theme_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

/// Виджет, представляющий корневой элемент приложения
class TemplateApp extends StatefulWidget {
  final AppEnvironment appEnvironment;

  const TemplateApp({
    required this.appEnvironment,
    Key? key,
  }) : super(key: key);

  @override
  State<TemplateApp> createState() => _TemplateAppState();
}

class _TemplateAppState extends State<TemplateApp> {
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [SupportedLocales.russianLocale],
      fallbackLocale: SupportedLocales.russianLocale,
      path: 'assets/translations',
      useOnlyLangCode: true,
      child: _ThemebleWidget(
        themebleBuilder: (themeState) => _ThemedApp(
          environment: widget.appEnvironment,
          appTheme: themeState,
        ),
      ),
    );
  }
}

/// Виджет добавляющий в дерево виджет-структуру, позволяющую динамически изменять тему приложения,
/// поддерживать разные локализации и форматирование приложения.
/// Изменения темы можно применять через события в [AppThemeBloc],
/// При обновлении создаться новый state, который обновит дерево виджетов и [AppTheme]
class _ThemebleWidget extends StatelessWidget {
  final Widget Function(AppTheme theme) themebleBuilder;

  const _ThemebleWidget({
    required this.themebleBuilder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppThemeBloc>(
      create: (ctx) => GetIt.I.get(),
      child: BlocBuilder<AppThemeBloc, AppTheme>(
        builder: (context, themeState) => AppThemeProvider(
          child: themebleBuilder(themeState),
          theme: themeState,
        ),
      ),
    );
  }
}

/// Виджет вклчюающий в дерево [MaterialApp] с корректными настройками в зависимости от темы [appTheme]
/// Локализации [EasyLocalization] и окружения [environment]
class _ThemedApp extends StatelessWidget {
  final AppEnvironment environment;

  final AppTheme appTheme;

  const _ThemedApp({
    required this.environment,
    required this.appTheme,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I.get<AppRouter>();

    return MaterialApp.router(
      //В данном примере перечислены лишь некоторые из возможных настроек, подробнее про настройки смотри в ThemeData
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: appTheme.colorTheme.accent,
          primaryContainer: appTheme.colorTheme.accentVariant,
          onPrimary: appTheme.colorTheme.onAccent,
          secondary: appTheme.colorTheme.secondaryAccent,
          secondaryContainer: appTheme.colorTheme.secondaryAccentVariant,
          onSecondary: appTheme.colorTheme.onSecondary,
          surface: appTheme.colorTheme.backgroundSurface,
          onSurface: appTheme.colorTheme.onSurface,
          background: appTheme.colorTheme.backgroundWindowBackground,
          onBackground: appTheme.colorTheme.onBackground,
          error: appTheme.colorTheme.strokeError,
          onError: appTheme.colorTheme.onAccent,
          brightness: appTheme.colorTheme.brightness,
        ),
        textTheme: TextTheme(
          bodyText1: appTheme.textTheme.body1Medium,
          headline1: appTheme.textTheme.h5Bold,
          headline2: appTheme.textTheme.h6Bold,
          button: appTheme.textTheme.buttonMedium,
          caption: appTheme.textTheme.caption1Medium,
          subtitle1: appTheme.textTheme.subtitle2Bold,
          subtitle2: appTheme.textTheme.subtitle2Medium,
        ),
        shadowColor: appTheme.colorTheme.onBackground,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: appTheme.colorTheme.backgroundSurface,
          elevation: 8,
          modalBackgroundColor: appTheme.colorTheme.onBackground.withOpacity(0.3),
          modalElevation: 16,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: appTheme.colorTheme.backgroundSurface,
          titleTextStyle: appTheme.textTheme.h5Medium,
        ),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      showPerformanceOverlay: environment.debugOptions.showPerformanceOverlay,
      debugShowMaterialGrid: environment.debugOptions.debugShowMaterialGrid,
      checkerboardRasterCacheImages: environment.debugOptions.checkerboardRasterCacheImages,
      checkerboardOffscreenLayers: environment.debugOptions.checkerboardOffscreenLayers,
      showSemanticsDebugger: environment.debugOptions.showSemanticsDebugger,
      debugShowCheckedModeBanner: environment.debugOptions.debugShowCheckedModeBanner,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(
        appRouter,
        navigatorObservers: () => [
          GetIt.I.get<RouterLoggingObserver>(),
        ],
      ),
    );
  }
}
