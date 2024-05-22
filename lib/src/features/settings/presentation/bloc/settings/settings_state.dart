part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.empty() = _EmptySettingsState;
  const factory SettingsState.inProgress() = _InProgressSettingsState;
  const factory SettingsState.done({
    required Settings data,
  }) = _DoneSettingsState;
  const factory SettingsState.error() = _ErrorSettingsState;
}
