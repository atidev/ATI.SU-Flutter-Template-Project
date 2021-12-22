import 'dart:async';

import 'package:ati_su_flutter_template_project/arch/sr_bloc/sr_bloc.dart';
import 'package:ati_su_flutter_template_project/core/user/user_repository.dart';
import 'package:ati_su_flutter_template_project/features/main_page/domain/greatest_time_interactor.dart';
import 'package:ati_su_flutter_template_project/features/main_page/presentation/bloc/main_page_bloc_models.dart';
import 'package:ati_su_flutter_template_project/generated/locale_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

/// Логический компонент для работы с главной страницей
@injectable
class MainPageBloc extends SrBloc<MainPageEvent, MainPageState, MainPageSR> {
  @protected
  final UserRepository userRepository;
  @protected
  final GreatestTimeInteractor greatestTimeInteractor;

  MainPageBloc({
    required this.userRepository,
    required this.greatestTimeInteractor,
  }) : super(const MainPageState.empty()) {
    on<MainPageEventInit>(_init);
    on<MainPageEventUnauthorize>(_unauthorize);
    on<MainPageEventCheckTime>(_chekTime);
  }

  FutureOr<void> _init(MainPageEventInit event, Emitter<MainPageState> emit) {
    emit(
      MainPageState.data(
        descriptionText: LocaleKeys.main_page.tr(),
        logoutButtonText: LocaleKeys.exit_action.tr(),
        timeButtonText: LocaleKeys.get_time_action.tr(),
        timeText: '',
      ),
    );
  }

  FutureOr<void> _unauthorize(MainPageEventUnauthorize event, Emitter<MainPageState> emit) {
    userRepository.unAuthorize();
  }

  FutureOr<void> _chekTime(MainPageEventCheckTime event, Emitter<MainPageState> emit) async {
    final timeResult = await greatestTimeInteractor.getGreatestServerOrPhoneTime();

    if (timeResult.isRight) {
      emit(state.data.copyWith(timeText: timeResult.right.toString()));
    } else {
      addSr(MainPageSR.showSnackbar(text: LocaleKeys.time_unknown.tr()));
    }
  }
}
