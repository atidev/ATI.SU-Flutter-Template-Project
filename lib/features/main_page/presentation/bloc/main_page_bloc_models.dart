import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_page_bloc_models.freezed.dart';

@freezed
class MainPageState with _$MainPageState {
  MainPageStateData get data => this as MainPageStateData;

  const MainPageState._();

  const factory MainPageState.empty() = MainPageStateEmpty;

  const factory MainPageState.data({
    required String descriptionText,
    required String timeText,
    required String timeButtonText,
    required String logoutButtonText,
  }) = MainPageStateData;
}

@freezed
class MainPageEvent with _$MainPageEvent {
  const factory MainPageEvent.init() = MainPageEventInit;

  const factory MainPageEvent.unauthorize() = MainPageEventUnauthorize;

  const factory MainPageEvent.checkTime() = MainPageEventCheckTime;
}

@freezed
class MainPageSR with _$MainPageSR {
  const factory MainPageSR.showSnackbar({required String text}) = _ShowSnackbar;
}
