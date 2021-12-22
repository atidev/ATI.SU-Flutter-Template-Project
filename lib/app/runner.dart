import 'dart:async';

import 'package:ati_su_flutter_template_project/app/app_environment.dart';
import 'package:ati_su_flutter_template_project/app/runner.config.dart';
import 'package:ati_su_flutter_template_project/app/template_app.dart';
import 'package:ati_su_flutter_template_project/arch/easy_localization/easy_logger_wrapper.dart';
import 'package:ati_su_flutter_template_project/arch/key_value_store_migrator/key_value_store.dart';
import 'package:ati_su_flutter_template_project/arch/key_value_store_migrator/key_value_store_migrator.dart';
import 'package:ati_su_flutter_template_project/arch/tagetPlatformOverride/desktop/shared.dart';
import 'package:ati_su_flutter_template_project/core/infrastructure/logger_bloc_observer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

///Метод инициализации GetIt
@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
  ignoreUnregisteredTypes: [
    AppEnvironment, //регистрирую базовые настройки конфигурации приложения
  ],
)

/// В Runner мы иницируем Flutter движок
class Runner {
  static Future<void> run(AppEnvironment appEnvironment) async {
    await initializeFlutterPluginsAndDependencies(appEnvironment: appEnvironment);
    runZonedGuarded(
      () => BlocOverrides.runZoned(
        () => runApp(TemplateApp(appEnvironment: appEnvironment)),
        blocObserver: appEnvironment.enableBlocLogs ? GetIt.I.get<LoggerBlocObserver>() : null,
      ),
      (err, stack) async {
        GetIt.I.get<Logger>().e('Critical Error:', err, stack);
      },
    );
  }

  static Future<void> initializeFlutterPluginsAndDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    //================================= Инициализация Flutter =================================
    setTargetPlatformForDesktop(); //Смешивание платформ для десктопа и мобилки
    WidgetsFlutterBinding.ensureInitialized(); // Нужно вызывать чтобы не падало проставление ориентации

    //================================= DI =================================
    await configureDependencies(appEnvironment: appEnvironment);

    //================================= Инициализация плагинов =================================

    //================================= DB =================================
    // Производим миграции [KeyValueStore]
    await GetIt.I.get<KeyValueStore>().init();
    await GetIt.I.get<KeyValueStoreMigrator>().migrate();

    //================================= Логирование =================================
    final easyLoggerWrapper = GetIt.I.get<EasyLoggerWrapper>();
    EasyLocalization.logger = EasyLogger(
      name: '🌎 Easy Localization',
      printer: (appEnvironment.enableEasyLocalizationLogs) ? easyLoggerWrapper.log : easyLoggerWrapper.stubLog,
    );

    //================================= Локализация =================================
    await EasyLocalization.ensureInitialized();
  }

  static Future<void> configureDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    GetIt.I.registerSingleton<AppEnvironment>(appEnvironment);

    await $initGetIt(
      GetIt.instance,
      environment: appEnvironment.buildType.getItEnvironmentKey,
    );
  }
}
