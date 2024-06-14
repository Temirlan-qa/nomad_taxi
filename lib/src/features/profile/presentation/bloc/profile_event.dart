part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.init() = _Init;
  const factory ProfileEvent.logOut() = _LogOut;
  const factory ProfileEvent.deleteAccount() = _DeleteAccount;
  const factory ProfileEvent.updateUserInfo({
    required String name,
    required String lastName,
  }) = _UpdateUserInfo;

  const factory ProfileEvent.updatePartnerData({
    required UpdatePartnerDataRequest partnerData,
  }) = _UpdatePartnerData;

  const factory ProfileEvent.updateFcmToken({
    required UpdateFcmTokenRequest fcmToken,
  }) = _UpdateFcmToken;

  const factory ProfileEvent.updateLanguage({
    required UpdateLanguageRequest language,
  }) = _UpdateLanguage;
}
