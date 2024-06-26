import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/core/service/auth/models/resend_code_request.dart';
import 'package:nomad_taxi/src/core/service/auth/models/verify_request.dart';
import 'package:nomad_taxi/src/features/auth/domain/usecases/login_use_case.dart';
import 'package:nomad_taxi/src/features/auth/domain/usecases/resend_code_use_case.dart';
import 'package:nomad_taxi/src/features/auth/domain/usecases/verify_user_case.dart';

import '../../../../core/base/base_bloc/bloc/base_bloc.dart';
import '../../../../core/base/base_usecase/result.dart';
import '../../../../core/service/auth/models/sign_in_request.dart';
import '../../../../core/service/auth/models/sign_in_response.dart';
import '../../../../core/service/auth/models/verify_response.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  AuthBloc(
    this._loginUseCase,
    this._verifyUseCase,
    this._resendCodeUseCase,
  ) : super(const _Initial());

  final LoginUseCase _loginUseCase;
  final VerifyUseCase _verifyUseCase;
  final ResendCodeUseCase _resendCodeUseCase;

  final AuthStateViewModel _viewModel = const AuthStateViewModel();

  @override
  Future<void> onEventHandler(AuthEvent event, Emitter emit) async {
    await event.when(
      reSendCode: (_) => _reSendCode(
        event as _ReSendCode,
        emit as Emitter<AuthState>,
      ),
      login: (_) => _login(
        event as _Login,
        emit as Emitter<AuthState>,
      ),
      verify: (_, __) => _verify(
        event as _Verify,
        emit as Emitter<AuthState>,
      ),
    );
  }

  Future<void> _reSendCode(_ReSendCode event, Emitter<AuthState> emit) async {
    final requestModel = ResendCodeRequest(
      userId: event.userId,
    );
    await _resendCodeUseCase.call(requestModel);
  }

  Future<void> _login(_Login event, Emitter<AuthState> emit) async {
    emit(const _Initial());
    final SignInRequest request = SignInRequest(phone: event.phone);
    final Result<SignInResponse, DomainException> result =
        await _loginUseCase.call(request);

    final data = result.data;

    if (data == null) {
      return emit(const _Error("Login failed"));
    }
    if (result.isSuccessful) {
      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            userId: data.data.userId,
          ),
        ),
      );
    }
    return emit(const _Error("Login failed"));
  }

  Future<void> _verify(_Verify event, Emitter<AuthState> emit) async {
    final VerifyRequest request = VerifyRequest(
      userId: event.userId,
      code: event.code,
    );

    final Result<VerifyResponse, DomainException> result =
        await _verifyUseCase.call(request);

    final data = result.data;

    if (data == null) {
      return emit(const _ErrorVerify("Вы ввели не правильный код"));
    }

    if (result.isSuccessful) {
      return emit(
        _Verified(
          viewModel: _viewModel.copyWith(
            token: data.data.accessToken,
          ),
        ),
      );
    }
    return emit(const _ErrorVerify("Вы ввели не правильный код"));
  }
}
