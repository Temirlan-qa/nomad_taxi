part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loaded({
    required AuthStateViewModel viewModel,
  }) = _Loaded;
  const factory AuthState.verified({
    required AuthStateViewModel viewModel,
  }) = _Verified;
  const factory AuthState.error(String error) = _Error;
}

@freezed
class AuthStateViewModel with _$AuthStateViewModel {
  const factory AuthStateViewModel({
    @Default(0) int userId,
    @Default('') String token,
  }) = _AuthStateViewModel;
}
