import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/delete_account_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/log_out_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/update_user_info_use_case.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  ProfileBloc(
    this._updateUserInfoUseCase,
    this._logOutUseCase,
    this._deleteAccountUseCase,
  ) : super(const _Initial());

  final UpdateUserInfoUseCase _updateUserInfoUseCase;
  final LogOutUseCase _logOutUseCase;
  final DeleteAccountUseCase _deleteAccountUseCase;

  final ProfileViewModel _viewModel = const ProfileViewModel();

  @override
  Future<void> onEventHandler(ProfileEvent event, Emitter emit) async {
    await event.when(
      init: () => _init(event as _Init, emit),
      logOut: () => _logOut(event as _LogOut, emit),
      deleteAccount: () => _deleteAccount(event as _DeleteAccount, emit),
      updateUserInfo: (_, __, ___) =>
          _updateUserInfo(event as _UpdateUserInfo, emit),
    );
  }

  Future<void> _init(
    _Init event,
    Emitter emit,
  ) async {
    emit(const _Initial());
  }

  Future<void> _logOut(
    _LogOut event,
    Emitter emit,
  ) async {
    final result = await _logOutUseCase.call();
  }

  Future<void> _deleteAccount(
    _DeleteAccount event,
    Emitter emit,
  ) async {
    final result = await _deleteAccountUseCase.call();
  }

  Future<void> _updateUserInfo(
    _UpdateUserInfo event,
    Emitter emit,
  ) async {
    final UpdateUserInfoRequest request = UpdateUserInfoRequest(
      name: event.name,
      lastName: event.lastName,
      phone: event.phone,
    );
    final result = await _updateUserInfoUseCase.call(request);
  }

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}
