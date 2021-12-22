import 'package:ati_su_flutter_template_project/app/theme/bloc/app_theme.dart';
import 'package:ati_su_flutter_template_project/arch/sr_bloc/sr_bloc_builder.dart';
import 'package:ati_su_flutter_template_project/core/widgets/adaptive_circular_progress.dart';
import 'package:ati_su_flutter_template_project/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:ati_su_flutter_template_project/features/splash/presentation/bloc/splash_bloc_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

/// Сплэш-экран загрузки приложения
class SplashPage extends StatelessWidget {
  final VoidCallback? onLoad;

  const SplashPage({
    this.onLoad,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (_) => GetIt.I.get()..add(const SplashEvent.init()),
      child: SrBlocBuilder<SplashBloc, SplashState, SplashSR>(
        onSR: _onSingleResult,
        builder: (_, state) => const _SplashPageContent(),
      ),
    );
  }

  void _onSingleResult(BuildContext context, SplashSR sr) {
    sr.when(
      loadFinished: () => onLoad?.call(),
    );
  }
}

/// Пример виджета - контента сплэша
class _SplashPageContent extends StatelessWidget {
  const _SplashPageContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: appTheme.colorTheme.backgroundSurface,
          child: const AdaptiveCircularProgressWidget(),
        ),
      ),
    );
  }
}
