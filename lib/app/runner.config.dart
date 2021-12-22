// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity/connectivity.dart' as _i4;
import 'package:dio/dio.dart' as _i28;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i10;

import '../arch/dio_error_handler/dio_error_handler.dart' as _i20;
import '../arch/dio_error_handler/models/dio_error_models.dart' as _i21;
import '../arch/easy_localization/easy_logger_wrapper.dart' as _i22;
import '../arch/key_value_store_migrator/key_value_store.dart' as _i7;
import '../arch/key_value_store_migrator/key_value_store_migrator.dart' as _i24;
import '../core/http/dio_client_creator.dart' as _i19;
import '../core/http/dio_client_module.dart' as _i38;
import '../core/http/link_provider.dart' as _i9;
import '../core/infrastructure/dio_logger_wrapper.dart' as _i5;
import '../core/infrastructure/infrastructure_module.dart' as _i35;
import '../core/infrastructure/logger_bloc_observer.dart' as _i11;
import '../core/storage/database/app_database.dart' as _i16;
import '../core/storage/database/db_module.dart' as _i36;
import '../core/storage/migration_observer_logger.dart' as _i12;
import '../core/storage/sharedPrefs/prefs_key_value_store.dart' as _i8;
import '../core/user/user_repository.dart' as _i15;
import '../features/auth/domain/auth_interactor.dart' as _i18;
import '../features/auth/presentation/bloc/login_bloc.dart' as _i25;
import '../features/main_page/data/mappers/time_model_mapper.dart' as _i14;
import '../features/main_page/data/services/time_api_service.dart' as _i31;
import '../features/main_page/data/time_repository.dart' as _i32;
import '../features/main_page/domain/greatest_time_interactor.dart' as _i33;
import '../features/main_page/presentation/bloc/main_page_bloc.dart' as _i34;
import '../features/splash/data/startup_repository.dart' as _i13;
import '../features/splash/domain/startup_interactor.dart' as _i26;
import '../features/splash/presentation/bloc/splash_bloc.dart' as _i30;
import 'app_environment.dart' as _i6;
import 'router/app_router.dart' as _i27;
import 'router/guards/auth_guard.dart' as _i17;
import 'router/guards/init_guard.dart' as _i23;
import 'router/router_logging_observer.dart' as _i29;
import 'router/router_module.dart' as _i37;
import 'theme/bloc/app_theme_bloc.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final infrastructureModule = _$InfrastructureModule();
  final dbModule = _$DbModule();
  final routerModule = _$RouterModule();
  final dioClientModule = _$DioClientModule();
  gh.singleton<_i3.AppThemeBloc>(_i3.AppThemeBloc());
  gh.singleton<_i4.Connectivity>(infrastructureModule.connectivity);
  gh.lazySingleton<_i5.DioLoggerWrapper>(
      () => infrastructureModule.dioLoggerWrapper(get<_i6.AppEnvironment>()));
  gh.singleton<_i7.KeyValueStore>(_i8.SharedPrefsKeyValueStore());
  gh.singleton<_i9.LinkProvider>(_i9.LinkProvider());
  gh.lazySingleton<_i10.Logger>(
      () => infrastructureModule.logger(get<_i6.AppEnvironment>()));
  gh.singleton<_i11.LoggerBlocObserver>(
      _i11.LoggerBlocObserver(get<_i10.Logger>()));
  gh.singleton<_i12.MigrationObserverLogger>(
      _i12.MigrationObserverLogger(get<_i10.Logger>()));
  gh.singleton<_i13.StartupRepository>(_i13.StartupRepositoryImpl());
  gh.singleton<_i14.TimeModelMapper>(_i14.TimeModelMapper());
  gh.singleton<_i15.UserRepository>(_i15.UserRepositoryImpl());
  gh.singleton<_i16.AppDatabase>(
      dbModule.appDatabase(observer: get<_i12.MigrationObserverLogger>()));
  gh.singleton<_i17.AuthGuard>(
      routerModule.authGuard(get<_i15.UserRepository>()));
  gh.singleton<_i18.AuthInteractor>(
      _i18.AuthInteractorImpl(get<_i15.UserRepository>()));
  gh.singleton<_i19.DioClientCreator>(_i19.DioClientCreatorImpl(
      linkProvider: get<_i9.LinkProvider>(),
      logger: get<_i5.DioLoggerWrapper>(),
      appEnvironment: get<_i6.AppEnvironment>()));
  gh.lazySingleton<_i20.DioErrorHandler<_i21.DefaultApiError>>(
      () => dioClientModule.makeDioErrorHandler(get<_i10.Logger>()));
  gh.singleton<_i22.EasyLoggerWrapper>(
      _i22.EasyLoggerWrapper(get<_i10.Logger>()));
  gh.singleton<_i23.InitGuard>(
      routerModule.initGuard(get<_i13.StartupRepository>()));
  gh.singleton<_i24.KeyValueStoreMigrator>(_i8.KeyValueStoreMigratorImpl(
      keyValueStore: get<_i7.KeyValueStore>(),
      observer: get<_i12.MigrationObserverLogger>()));
  gh.factory<_i25.LoginBloc>(() => _i25.LoginBloc(get<_i18.AuthInteractor>()));
  gh.singleton<_i26.StartupInteractor>(
      _i26.StartupInteractorImpl(
          startupRepository: get<_i13.StartupRepository>(),
          userRepository: get<_i15.UserRepository>(),
          authGuard: get<_i17.AuthGuard>()),
      dispose: (i) => i.dispose());
  gh.singleton<_i27.AppRouter>(
      routerModule.appRouter(get<_i17.AuthGuard>(), get<_i23.InitGuard>()));
  await gh.singletonAsync<_i28.Dio>(
      () => dioClientModule.makeDioClient(get<_i19.DioClientCreator>()),
      instanceName: 'timeHttpClient',
      preResolve: true);
  gh.factory<_i29.RouterLoggingObserver>(() => routerModule
      .routerLoggingObserver(get<_i10.Logger>(), get<_i27.AppRouter>()));
  gh.factory<_i30.SplashBloc>(
      () => _i30.SplashBloc(startupInteractor: get<_i26.StartupInteractor>()));
  gh.singleton<_i31.TimeApiService>(_i31.TimeApiServiceImpl(
      get<_i28.Dio>(instanceName: 'timeHttpClient'),
      get<_i20.DioErrorHandler<_i21.DefaultApiError>>()));
  gh.singleton<_i32.TimeRepository>(_i32.TimeRepositoryImpl(
      timeApiService: get<_i31.TimeApiService>(),
      timeModelMapper: get<_i14.TimeModelMapper>()));
  gh.singleton<_i33.GreatestTimeInteractor>(_i33.GreatestTimeInteractorImpl(
      timeRepository: get<_i32.TimeRepository>()));
  gh.factory<_i34.MainPageBloc>(() => _i34.MainPageBloc(
      userRepository: get<_i15.UserRepository>(),
      greatestTimeInteractor: get<_i33.GreatestTimeInteractor>()));
  return get;
}

class _$InfrastructureModule extends _i35.InfrastructureModule {}

class _$DbModule extends _i36.DbModule {}

class _$RouterModule extends _i37.RouterModule {}

class _$DioClientModule extends _i38.DioClientModule {}
