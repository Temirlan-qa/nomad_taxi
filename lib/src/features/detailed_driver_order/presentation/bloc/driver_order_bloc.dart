import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/exports/all.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/entities/get_order_status_response.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/usecases/complete_order_use_case.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/usecases/start_route_use_case.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/usecases/waiting_for_client_use_case.dart';

import '../../../../core/service/injectable/injectable_service.dart';
import '../../../../core/service/storage/storage_service_impl.dart';
import '../../../orders/data/models/requests/accept_order_request.dart';
import '../../../orders/domain/entities/order/order_entity.dart';
import '../../../orders/domain/entities/orders_response/orders_response.dart';
import '../../../orders/domain/entities/response/order_response.dart';
import '../../domain/usecases/accept_order_use_case.dart';
import '../../domain/usecases/cancel_order_use_case.dart';
import '../../domain/usecases/get_new_order_use_case.dart';
import '../../domain/usecases/get_order_status_use_case.dart';
import '../../domain/usecases/get_orders_use_case.dart';

part 'driver_order_bloc.freezed.dart';
part 'driver_order_event.dart';
part 'driver_order_state.dart';

class DriverOrderBloc extends BaseBloc<DriverOrderEvent, DriverOrderState> {
  DriverOrderBloc(
      this._getOrderStatusUseCase,
      this._getOrdersUseCase,
      this._acceptOrderUseCase,
      this._cancelOrderUseCase,
      this._waitingForClientUseCase,
      this._startRouteUseCase,
      this._completeOrderUseCase,
      this._getNewOrderUseCase)
      : super(const _Initial());

  final GetOrderStatusUseCase _getOrderStatusUseCase;

  final GetOrdersUseCase _getOrdersUseCase;

  final AcceptOrderUseCase _acceptOrderUseCase;

  final WaitingForClientUseCase _waitingForClientUseCase;

  final StartRouteUseCase _startRouteUseCase;

  final CompleteOrderUseCase _completeOrderUseCase;

  final CancelOrderUseCase _cancelOrderUseCase;

  final GetNewOrderUseCase _getNewOrderUseCase;

  final ProfileBloc profileBloc = getIt<ProfileBloc>();

  final StorageServiceImpl _storage = StorageServiceImpl();

  StreamSubscription? _orderStatusSubscription;

  StreamSubscription? _orderSubscription;

  DriverOrderViewModel _viewModel = const DriverOrderViewModel();

  Timer? _timer;

  @override
  Future<void> onEventHandler(DriverOrderEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(),
      getOrderStatus: () => _getOrderStatus(),
      getOrders: () => _getOrders(event as _GetOrders, emit),
      updateOrderStatus: (_) =>
          _updateOrderStatus(event as _UpdateOrderStatus, emit),
      acceptOrder: (_) => _acceptOrder(event as _AcceptOrder, emit),
      cancelOrder: (_) => _cancelOrder(event as _CancelOrder, emit),
      waitingForClient: (_) =>
          _waitingForClient(event as _WaitingForClient, emit),
      startRoute: (_) => _startRoute(event as _StartRoute, emit),
      completeOrder: (_) => _completeOrder(event as _CompleteOrder, emit),
      getNewOrder: () => getNewOrder(),
      updateOrderList: (_) => updateOrderList(event as _UpdateOrderList, emit),
    );
  }

  Future<void> _started() async {
    // add(const _GetOrderStatus());
    // await Future.delayed(const Duration(seconds: 1));
    add(const _GetOrders());
    add(const _GetNewOrder());
  }

  Future<void> _getOrderStatus() async {
    await _orderStatusSubscription?.cancel();
    _orderStatusSubscription = null;

    _orderStatusSubscription = _getOrderStatusUseCase().listen((result) {
      GetOrderStatusResponse? data = result.data;
      if (result.isSuccessful && data != null) {
        add(_UpdateOrderStatus(updateOrderStatus: data));
      }
    });
  }

  Future<void> _updateOrderStatus(
      _UpdateOrderStatus event, Emitter emit) async {
    GetOrderStatusResponse updatedOrderStatus = event.updateOrderStatus;

    _viewModel = _viewModel.copyWith(updatedOrderStatus: updatedOrderStatus);
  }

  Future<void> getNewOrder() async {
    await _orderSubscription?.cancel();
    _orderSubscription = null;

    _orderSubscription = _getNewOrderUseCase().listen((result) {
      OrderResponse? data = result.data;
      OrderEntity? newOrder = data?.order;
      if (result.isSuccessful && newOrder != null) {
        add(_UpdateOrderList(newOrder: newOrder));
      }
    });
  }

  Future<void> updateOrderList(_UpdateOrderList event, Emitter emit) async {
    final newOrder = event.newOrder;

    final List<OrderEntity> currentOrders = _viewModel.ordersList;

    final List<OrderEntity> updatedOrdersList = List.from(currentOrders)
      ..add(newOrder);

    _viewModel = _viewModel.copyWith(ordersList: updatedOrdersList);
    emit(_Loaded(viewModel: _viewModel));
  }

  Future<void> _getOrders(
    _GetOrders event,
    Emitter emit,
  ) async {
    emit(const _Initial());
    // //* Show active order for driver
    final OrderEntity? activeOrder = _storage.loadOrder();

    if (activeOrder != null) {
      _viewModel = _viewModel.copyWith(activeOrder: activeOrder);
      emit(_Loaded(viewModel: _viewModel));
    }

    final result = await _getOrdersUseCase.call();

    final OrdersResponse? data = result.data;

    if (result.isSuccessful && data != null) {
      _viewModel = _viewModel.copyWith(
        ordersList: data.orders,
      );
      Future.delayed(const Duration(seconds: 1));
      emit(_Loaded(viewModel: _viewModel));
    }
    // emit(_Error(S.current.noActiveOrdersAtTheMoment));
  }

  Future<void> _acceptOrder(_AcceptOrder event, Emitter emit) async {
    emit(const _Initial());
    final OrderRequest request = OrderRequest(id: event.orderId);

    final result = await _acceptOrderUseCase.call(request);

    final OrderResponse? data = result.data;

    final OrderEntity? orderAccepted = data?.order;

    if (result.isSuccessful && orderAccepted != null) {
      await _storage.saveOrder(orderAccepted);
    }
  }

  Future<void> _waitingForClient(_WaitingForClient event, emit) async {
    final OrderRequest request = OrderRequest(id: event.orderId);

    final result = await _waitingForClientUseCase.call(request);

    if (result.isSuccessful) {
      return emit(const _Waiting());
    }
  }

  Future<void> _startRoute(_StartRoute event, emit) async {
    final OrderRequest request = OrderRequest(id: event.orderId);

    final result = await _startRouteUseCase.call(request);

    if (result.isSuccessful) {
      return emit(const _Start());
    }
  }

  Future<void> _completeOrder(_CompleteOrder event, emit) async {
    final OrderRequest request = OrderRequest(id: event.orderId);

    final result = await _completeOrderUseCase.call(request);

    if (result.isSuccessful) {
      await _storage.deleteOrder();
    }
  }

  Future<void> _cancelOrder(
    _CancelOrder event,
    Emitter emit,
  ) async {
    emit(const _Initial());

    OrderRequest orderId = OrderRequest(id: event.orderId);

    final result = await _cancelOrderUseCase.call(orderId);

    if (result.isSuccessful) {
      await _storage.deleteOrder();

      log('success canceled order', name: 'CANCEL ORDER');

      List<OrderEntity> orderList = _viewModel.ordersList;

      List<OrderEntity> updatedOrdersList = List.from(orderList)
        ..removeWhere((order) => order.id == event.orderId);

      emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
              ordersList: updatedOrdersList, activeOrder: null),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _orderStatusSubscription?.cancel();
    _orderStatusSubscription = null;
    _timer?.cancel();
    getIt.resetBloc(this);
    return super.close();
  }
}
