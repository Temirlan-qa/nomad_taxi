part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loaded({
    required AuthStateViewModel viewModel,
  }) = _Loaded;
  const factory AuthState.verified() = _Verified;
  const factory AuthState.error(String error) = _Error;
}

@freezed
class AuthStateViewModel with _$AuthStateViewModel {
  factory AuthStateViewModel(
    SignInResponse loginResponse,
    VerifyResponse verifyResponse,
  ) = _AuthStateViewModel;
}
