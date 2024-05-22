part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.empty() = _EmptySettingsState;
  const factory SettingsState.inProgress() = _InProgressSettingsState;
  const factory SettingsState.done({
    required String languageCode,
  }) = _DoneSettingsState;
  const factory SettingsState.error() = _ErrorSettingsState;
}

// @freezed
// class SettingsViewModel with _$SettingsViewModel {
//   const factory SettingsViewModel(@Default('ru') String languageCode) =
//       _SettingsViewModel;
// }
