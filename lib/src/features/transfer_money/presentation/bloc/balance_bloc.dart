import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/pay_info_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/withdraw_info_use_case.dart';
import 'package:webview_flutter/webview_flutter.dart';

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

  final BalanceViewModel _viewModel = BalanceViewModel();

  @override
  Future<void> onEventHandler(BalanceEvent event, Emitter emit) async {
    await event.when(
      init: () => _init(event as _Init, emit),
      getInfo: () => _getInfo(event as _GetInfo, emit),
    );
  }

  Future<void> _init(
    _Init event,
    Emitter emit,
  ) async {
    emit(const _Initial());
  }

  Future<void> _getInfo(
    _GetInfo event,
    Emitter emit,
  ) async {
    final resultPay = await payInfoUseCase.call();
    final resultWithdraw = await withdrawInfoUseCase.call();

    final String? payInfo = resultPay.data;
    final String? dataWithdraw = resultWithdraw.data;

    if (payInfo != null && dataWithdraw != null) {
      final withdrawInfoController = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.disabled)
        ..loadHtmlString(dataWithdraw);

      final payInfoController = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.disabled)
        ..loadHtmlString(payInfo);

      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            payInfo: payInfoController,
            withdrawInfo: withdrawInfoController,
          ),
        ),
      );
    }
    emit(const _Error('Error'));
  }

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}
