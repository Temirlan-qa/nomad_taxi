import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/transfer_money/domain/usecases/pay_info_use_case.dart';
import 'package:nomad_taxi/src/features/transfer_money/domain/usecases/withdraw_info_use_case.dart';

part 'balance_bloc.freezed.dart';
part 'balance_event.dart';
part 'balance_state.dart';

class BalanceBloc extends BaseBloc<BalanceEvent, BalanceState> {
  BalanceBloc(
    this.payInfoUseCase,
    this.withdrawInfoUseCase,
  ) : super(const _Initial());
  final WithdrawInfoUseCase withdrawInfoUseCase;
  final PayInfoUseCase payInfoUseCase;

  final BalanceViewModel _viewModel = const BalanceViewModel();

  @override
  Future<void> onEventHandler(BalanceEvent event, Emitter emit) async {
    await event.when(
      init: () => _init(event as _Init, emit),
      payInfo: () => _payInfo(event as _PayInfo, emit),
      withdrawInfo: () => _withdrawInfo(event as _WithdrawInfo, emit),
    );
  }

  Future<void> _init(
    _Init event,
    Emitter emit,
  ) async {
    emit(const _Initial());
  }

  Future<void> _payInfo(
    _PayInfo event,
    Emitter emit,
  ) async {
    emit(const _Initial());
    final result = await payInfoUseCase.call();
    final String? data = result.data;

    if (data != null) {
      return emit(_Loaded(viewModel: _viewModel.copyWith(payInfo: data)));
    }
    emit(const _Error('Error'));
  }

  Future<void> _withdrawInfo(
    _WithdrawInfo event,
    Emitter emit,
  ) async {
    emit(const _Initial());
    final result = await withdrawInfoUseCase.call();
    final String? data = result.data;

    if (data != null) {
      return emit(_Loaded(viewModel: _viewModel.copyWith(withdrawInfo: data)));
    }
    emit(const _Error('Error'));
  }

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}
