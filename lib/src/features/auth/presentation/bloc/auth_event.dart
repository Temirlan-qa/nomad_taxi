part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required SignInRequest signInBody}) = _Login;
  const factory AuthEvent.verify({required VerifyRequest verifyRequest}) =
      _Verify;
}
