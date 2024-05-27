import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/core/service/auth/models/data_response.dart';
import 'package:nomad_taxi/src/features/auth/domain/usecases/login_use_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';
import '../../../../core/base/base_usecase/result.dart';
import '../../../../core/service/auth/models/sign_in_request.dart';
import '../../../../core/service/auth/models/sign_in_response.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc(
    this._loginUseCase,
  ) : super(const _Initial());

  final LoginUseCase _loginUseCase;

  @override
  Future<void> onEventHandler(AuthEvent event, Emitter emit) async {
    event.when(
      // started: () => _started(event as _Started, emit),
      login: (signInBody) => _login(
        event as _Login,
        emit as Emitter<AuthState>,
      ),
      verify: () => _verify(
        event as _Verify,
        emit as Emitter<AuthState>,
      ),
    );
  }

  // Future<void> _started(
  //   _Started event,
  //   Emitter emit,
  // ) async {

  //   emit(const _Initial());

  // }

  Future<void> _login(_Login event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final Result<SignInResponse, DomainException> result =
        await _loginUseCase.call(event.signInBody);

    if (emit.isDone) return; // Check if the event handler has already completed

    if (result.isSuccessful) {
      emit(
        AuthState.loaded(
          SignInResponse(
            status: result.data!.status,
            data: DataResponse(
              userId: result.data!.data.userId,
            ),
          ),
        ),
      );
    } else {
      emit(const AuthState.error("Login failed"));
    }
  }

  void _verify(_Verify event, Emitter<AuthState> emit) async {
    // final result = await repository.verifyUser(body: event);
    // result.fold(
    //   (failure) => add(AuthEvent.login(signInBody: SignInBody())),
    //   (response) => add(AuthEvent.login(signInBody: SignInBody())),
    // );
  }
}