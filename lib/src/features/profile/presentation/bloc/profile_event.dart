part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.init() = _Init;
  const factory ProfileEvent.logOut() = _LogOut;
  const factory ProfileEvent.deleteAccount() = _DeleteAccount;
  const factory ProfileEvent.updateUserInfo({
    required String name,
    required String lastName,
    required String phone,
  }) = _UpdateUserInfo;
}
