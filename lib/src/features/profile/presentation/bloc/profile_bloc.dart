import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/exports/profile_exports.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/order/order_entity.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_fcm_token_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_language_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_user_info_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/get_user_data_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/update_fcm_token_use_case.dart';

import '../../../../core/service/injectable/exports/all.dart';
import '../../../../core/service/storage/storage_service_impl.dart';
import '../../domain/requests/update_partner_data_request.dart';
import '../../domain/usecases/update_language_use_case.dart';
import '../../domain/usecases/update_partner_data_use_case.dart';

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
    this._updatePartnerDataUseCase,
  ) : super(const _Initial());

  final UpdateUserInfoUseCase _updateUserInfoUseCase;
  final LogOutUseCase _logOutUseCase;
  final DeleteAccountUseCase _deleteAccountUseCase;
  final GetUserDataUseCase _getUserDataUseCase;
  final UpdateFcmTokenUseCase _updateFcmTokenUseCase;
  final UpdateLanguageUseCase _updateLanguageUseCase;
  final UpdatePartnerDataUseCase _updatePartnerDataUseCase;

  final ProfileViewModel _viewModel = ProfileViewModel();

  final StorageServiceImpl _storage = StorageServiceImpl();

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
      updatePartnerData: (partnerData) =>
          _updatePartnerData(event as _UpdatePartnerData, emit),
      orderAccepted: (_) => _orderAccepted(event as _OrderAccepted, emit),
    );
  }

  Future<void> _init(
    _Init event,
    Emitter emit,
  ) async {
    // await _storage.deleteOrder();
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
            id: data.id,
            isBlocked: data.isBlocked ?? 0,
            bonus: data.bonus ?? 0,
            fcmToken: data.fcmToken ?? '',

            // Partner
            pBalance: data.pBalance ?? 0,
            pBonus: data.pBonus ?? 0,
            pCarModel: data.pCarModel,
            pCarNumber: data.pCarNumber,
            pFirstName: data.pFirstName,
            pId: data.pId,
            pLastName: data.pLastName,
            pStatus: data.pStatus,
            pTownId: data.pTownId,

            order: _storage.loadOrder(),
          ),
        ),
      );
    }
  }

  Future<void> _orderAccepted(_OrderAccepted event, emit) async {
    final OrderEntity activeOrder = event.order;

    emit(_Loaded(viewModel: _viewModel.copyWith(order: activeOrder)));
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
    await _deleteAccountUseCase.call();
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

  Future<void> _updatePartnerData(
    _UpdatePartnerData event,
    Emitter emit,
  ) async {
    final UpdatePartnerDataRequest request = UpdatePartnerDataRequest(
      firstName: event.partnerData.firstName,
      lastName: event.partnerData.lastName,
      carModel: event.partnerData.carModel,
      carNumber: event.partnerData.carNumber,
      townId: event.partnerData.townId,
    );

    final result = await _updatePartnerDataUseCase.call(request);
    final data = result.data;

    final user = await _getUserDataUseCase.call();

    final userData = user.data;

    if (result.isSuccessful && data != null && userData != null) {
      emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            firstName: userData.firstName,
            lastName: userData.lastName,
            phone: userData.phone,
            id: userData.id,
            isBlocked: userData.isBlocked ?? 0,
            bonus: userData.bonus ?? 0,
            fcmToken: userData.fcmToken ?? '',
            pFirstName: data.pFirstName,
            pLastName: data.pLastName,
            pCarModel: data.pCarModel,
            pCarNumber: data.pCarNumber,
            pTownId: data.pTownId,
            pId: data.pId,
            pBalance: data.pBalance ?? 0,
            pBonus: data.pBonus ?? 0,
            pStatus: data.pStatus,
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
