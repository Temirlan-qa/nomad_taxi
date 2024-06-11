import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/entities/get_order_status_response.dart';

import '../../../../core/service/injectable/injectable_service.dart';
import '../../domain/usecases/get_order_status_use_case.dart';

part 'driver_order_bloc.freezed.dart';
part 'driver_order_event.dart';
part 'driver_order_state.dart';

class DriverOrderBloc extends BaseBloc<DriverOrderEvent, DriverOrderState> {
  DriverOrderBloc(this._getOrderStatusUseCase) : super(const _Initial());

  final GetOrderStatusUseCase _getOrderStatusUseCase;

  StreamSubscription? _orderStatusSubscription;

  DriverOrderViewModel _viewModel = const DriverOrderViewModel();

    late Timer _timer;

  @override
  Future<void> onEventHandler(DriverOrderEvent event, Emitter emit) async {
    event.when(
      started: () => _started(),
      getOrderStatus: () => _getOrderStatus(),
      updateOrderStatus: (_) =>
          _updateOrderStatus(event as _UpdateOrderStatus, emit),
    );
  }

  Future<void> _started() async {
   _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      log('call', name: 'TimerPeriodic');
      add(const _GetOrderStatus());
    });
  }

  Future<void> _getOrderStatus() async {
     await _orderStatusSubscription?.cancel();
    _orderStatusSubscription == null;

    _orderStatusSubscription = _getOrderStatusUseCase().listen((result) {
      if (result.isSuccessful) {
        GetOrderStatusResponse? data = result.data;

        if (data != null) {
          add(_UpdateOrderStatus(updateOrderStatus: data));
        }
      }
      if (result.isFailure) {
        log('$result', name: 'GetOrderStatusUseCaseFailure');
      }
    });
  }

  Future<void> _updateOrderStatus(
      _UpdateOrderStatus event, Emitter emit) async {
    GetOrderStatusResponse updatedOrderStatus = event.updateOrderStatus;

    _viewModel = _viewModel.copyWith(updatedOrderStatus: updatedOrderStatus);

    emit(_Loaded(viewModel: _viewModel));
  }

  @override
  Future<void> close() {
    _orderStatusSubscription?.cancel();
    _orderStatusSubscription == null;
    _timer.cancel();
    getIt.resetBloc(this);
    return super.close();
  }
}