import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/core/utils/bloc_transformers/transformer_imports.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/bloc/driver_order_bloc.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/get_orders_response/get_orders_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/usecases/get_orders_use_case.dart';

import '../../../../core/localization/generated/l10n.dart';
import '../../domain/entities/order/order_entity.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends BaseBloc<OrderEvent, OrderState> {
  OrderBloc(
    this._getOrderUseCase,
  ) : super(const _Initial());
  final GetOrderUseCase _getOrderUseCase;

  final OrderViewModel _viewModel = const OrderViewModel();

  StreamSubscription? _orderStatusSubscription;

  final DriverOrderBloc _driverOrderBloc = getIt<DriverOrderBloc>();

  @override
  Future<void> onEventHandler(OrderEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(),
      getOrders: () => _getOrders(event as _GetOrders, emit),
      acceptOrder: (_) => _acceptOrder(event as _AcceptOrder, emit),
      cancelOrder: (_) => _cancelOrder(event as _CancelOrder, emit),
    );
  }

  Future<void> _started() async {
    // _driverOrderBloc.add(const DriverOrderEvent.started());
    add(const _GetOrders());
  }

  Future<void> _getOrders(
    _GetOrders event,
    Emitter emit,
  ) async {
    emit(const _Initial());

    try {
      final result = await _getOrderUseCase.call();

      final data = result.data;

      if (result.isSuccessful && data != null) {
        emit(
          _Loaded(
            viewModel: _viewModel.copyWith(
              ordersList: data.data
                  .map((item) =>
                      OrderEntity.fromJson(item as Map<String, dynamic>))
                  .toList(),
            ),
          ),
        );
      }
    } catch (_) {
      emit(_Error(S.current.noActiveOrdersAtTheMoment));
    }
  }

  Future<void> _acceptOrder(
    _AcceptOrder event,
    Emitter emit,
  ) async {
    emit(const _Initial());
  }

  Future<void> _cancelOrder(
    _CancelOrder event,
    Emitter emit,
  ) async {
    emit(const _Initial());
  }

  @override
  Future<void> close() {
    _orderStatusSubscription?.cancel();
    _orderStatusSubscription == null;
    getIt.resetBloc(this);
    return super.close();
  }
}
