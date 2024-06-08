import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/exports/profile_exports.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_fcm_token_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_language_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/get_user_data_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/update_fcm_token_use_case.dart';

import '../../../../core/service/injectable/exports/all.dart';
import '../../domain/usecases/update_language_use_case.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends BaseBloc<ProfileEvent, ProfileState> {
  ProfileBloc(
    this._updateUserInfoUseCase,
    this._logOutUseCase,
    this._deleteAccountUseCase,
    this._getUserDataUseCase,
    this._updateFcmTokenUseCase,
    this._updateLanguageUseCase,
  ) : super(const _Initial());

  final UpdateUserInfoUseCase _updateUserInfoUseCase;
  final LogOutUseCase _logOutUseCase;
  final DeleteAccountUseCase _deleteAccountUseCase;
  final GetUserDataUseCase _getUserDataUseCase;
  final UpdateFcmTokenUseCase _updateFcmTokenUseCase;
  final UpdateLanguageUseCase _updateLanguageUseCase;

  final ProfileViewModel _viewModel = const ProfileViewModel();

  @override
  Future<void> onEventHandler(ProfileEvent event, Emitter emit) async {
    await event.when(
      init: () => _init(event as _Init, emit),
      logOut: () => _logOut(event as _LogOut, emit),
      deleteAccount: () => _deleteAccount(event as _DeleteAccount, emit),
      updateUserInfo: (_, __) =>
          _updateUserInfo(event as _UpdateUserInfo, emit),
      updateFcmToken: (fcmToken) =>
          _updateFcmToken(event as _UpdateFcmToken, emit),
      updateLanguage: (language) =>
          _updateLanguage(event as _UpdateLanguage, emit),
    );
  }

  Future<void> _init(
    _Init event,
    Emitter emit,
  ) async {
    emit(const _Initial());
    final result = await _getUserDataUseCase.call();
    final data = result.data;

    if (result.isSuccessful && data != null) {
      emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            firstName: data.firstName,
            lastName: data.lastName,
            phone: data.phone,
          ),
        ),
      );
    }
  }

  Future<void> _logOut(
    _LogOut event,
    Emitter emit,
  ) async {
    final result = await _logOutUseCase.call();

    if (result.isSuccessful) {
      emit(
        _Loaded(
          viewModel: _viewModel,
        ),
      );
    }
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
    );
    final result = await _updateUserInfoUseCase.call(request);
    final data = result.data;

    if (result.isSuccessful && data != null) {
      emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            firstName: data.firstName,
            lastName: data.lastName,
            phone: data.phone,
          ),
        ),
      );
    }
  }

  Future<void> _updateFcmToken(
    _UpdateFcmToken event,
    Emitter emit,
  ) async {
    final UpdateFcmTokenRequest request = event.fcmToken;
    final result = await _updateFcmTokenUseCase.call(request);
  }

  Future<void> _updateLanguage(
    _UpdateLanguage event,
    Emitter emit,
  ) async {
    final UpdateLanguageRequest request = event.language;
    final result = await _updateLanguageUseCase.call(request);
  }

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}
