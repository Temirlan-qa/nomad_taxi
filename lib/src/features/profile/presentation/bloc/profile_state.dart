part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loaded({
    required ProfileViewModel viewModel,
  }) = _Loaded;
}

@freezed
class ProfileViewModel with _$ProfileViewModel {
  factory ProfileViewModel({
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String phone,
    // optional
    @Default(0) int id,
    int? isBlocked,
    @Default(0) int bonus,
    @Default('') String fcmToken,

    // partner info
    int? pId,
    String? pFirstName,
    String? pLastName,
    String? pCarModel,
    String? pCarNumber,
    int? pTownId,
    String? pStatus,
    int? pBalance,
    int? pBonus,
  }) = _ProfileViewModel;
}
