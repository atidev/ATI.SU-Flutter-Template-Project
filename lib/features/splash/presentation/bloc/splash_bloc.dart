import 'package:ati_su_flutter_template_project/arch/sr_bloc/sr_bloc.dart';
import 'package:ati_su_flutter_template_project/features/splash/domain/startup_interactor.dart';
import 'package:ati_su_flutter_template_project/features/splash/presentation/bloc/splash_bloc_models.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

/// Логический компонент для работы со сплеш страинцей, инициализирующий приложение
@injectable
class SplashBloc extends SrBloc<SplashEvent, SplashState, SplashSR> {
  @protected
  final StartupInteractor startupInteractor;

  SplashBloc({
    required this.startupInteractor,
  }) : super(SplashState()) {
    on<SplashEventInit>((event, emit) async {
      await startupInteractor.initialize();
      addSr(const SplashSR.loadFinished());
    });
  }
}
