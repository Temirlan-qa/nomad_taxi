part of 'toggle_status_bloc.dart';

@freezed
class ToggleStatusState with _$ToggleStatusState {
  const factory ToggleStatusState.initial() = _Initial;
  const factory ToggleStatusState.loaded({
    required ToggleStatusViewModel viewModel,
  }) = _Loaded;
}

@freezed
class ToggleStatusViewModel with _$ToggleStatusViewModel {
  factory ToggleStatusViewModel({
    @Default('offline') String pStatus,
  }) = _ToggleStatusViewModel;
}
