part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.findTown(
      {required double latitude, required double longitude}) = _FindTown;
}
