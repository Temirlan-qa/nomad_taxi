part of 'auth_bloc.dart';

@freezed
@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loaded(SignInResponse response) = _Loaded;
  const factory AuthState.error(String error) = _Error;
}

// @freezed
// class AuthStateViewModel with _$AuthStateViewModel {
//   factory AuthStateViewModel({

//   }) = _AuthStateViewModel;
// }
