import 'dart:async';

import 'package:ati_su_flutter_template_project/app/theme/bloc/app_theme.dart';
import 'package:ati_su_flutter_template_project/app/theme/models/app_color_theme.dart';
import 'package:ati_su_flutter_template_project/app/theme/models/app_text_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// Логический компонент, отвечающий за переключение тем в приложении
///
/// Является singleton в связи с тем, что переключение темы происходит через отправку событий в текущий инстанс,
/// после чего реактивно актаульная тема будет доставлена во все компоненты приложения
@singleton
class AppThemeBloc extends Bloc<AppThemeEvent, AppTheme> {
  AppThemeBloc()
      : super(AppTheme(
          colorTheme: const LightColorTheme(),
          textTheme: BaseTextTheme(),
        )) {
    on<AppThemeEventSetDarkTheme>(_setDarkTheme);
    on<AppThemeEventSetLightTheme>(_setLightTheme);
  }

  FutureOr<void> _setDarkTheme(AppThemeEventSetDarkTheme event, Emitter<AppTheme> emit) {
    emit(state.copyWith(colorTheme: const DarkRedColorTheme()));
  }

  FutureOr<void> _setLightTheme(AppThemeEventSetLightTheme event, Emitter<AppTheme> emit) {
    emit(state.copyWith(colorTheme: const LightColorTheme()));
  }
}
