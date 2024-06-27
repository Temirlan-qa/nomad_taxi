part of 'toggle_status_bloc.dart';

@freezed
class ToggleStatusEvent with _$ToggleStatusEvent {
  const factory ToggleStatusEvent.togglePartnerStatus() = _TogglePartnerStatus;
}
