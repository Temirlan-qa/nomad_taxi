part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({required String phone}) = _Login;
  const factory AuthEvent.verify(
      {required String code, required String userId}) = _Verify;
}
