import 'dart:async';
import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/core/utils/bloc_transformers/transformer_imports.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/bloc/driver_order_bloc.dart';
import 'package:nomad_taxi/src/features/orders/data/models/requests/create_order_request.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/create_order/create_order_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/orders_response/orders_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/usecases/get_orders_use_case.dart';

import '../../../../core/base/base_usecase/result.dart';
import '../../../../core/exceptions/domain_exception.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../data/models/requests/accept_order_request.dart';
import '../../domain/entities/order/order_entity.dart';
import '../../domain/entities/response/order_response.dart';
import '../../domain/usecases/accept_order_use_case.dart';
import '../../domain/usecases/cancel_order.dart';
import '../../domain/usecases/create_order_use_case.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
@factoryMethod
class OrderBloc extends BaseBloc<OrderEvent, OrderState> {
  OrderBloc(
    this._getOrderUseCase,
    this._acceptOrderUseCase,
    this._cancelOrderUseCase,
    this._createOrderUseCase,
  ) : super(const _Initial());

  final GetOrderUseCase _getOrderUseCase;

  final AcceptOrderUseCase _acceptOrderUseCase;

  final CancelOrderUseCase _cancelOrderUseCase;

  final CreateOrderUseCase _createOrderUseCase;

  final DriverOrderBloc _driverOrderBloc = getIt<DriverOrderBloc>();

  OrderViewModel _viewModel = const OrderViewModel();

  StreamSubscription? _orderStatusSubscription;

  @override
  Future<void> onEventHandler(OrderEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(),
      getOrders: () => _getOrders(event as _GetOrders, emit),
      acceptOrder: (_) => _acceptOrder(event as _AcceptOrder, emit),
      cancelOrder: (_) => _cancelOrder(event as _CancelOrder, emit),
      createOrder: (_) => _createOrder(event as _CreateOrder, emit),
    );
  }

  Future<void> _started() async {
    _driverOrderBloc.add(const DriverOrderEvent.started());
    add(const _GetOrders());
  }

  Future<void> _createOrder(_CreateOrder event, Emitter emit) async {
    final createOrderRequest = CreateOrderRequest(event.orderEntity);

    final result = await _createOrderUseCase.call(createOrderRequest);

    OrderResponse? data = result.data;

    OrderEntity? order = data?.order;

    if (result.isSuccessful && order != null) {
      int orderId = order.id;

      log('order created success', name: 'CreateOrder');

      add(_AcceptOrder(orderId: orderId));
      return;
    }

    emit(const _Error('Failed to create order'));
  }

  Future<void> _getOrders(
    _GetOrders event,
    Emitter emit,
  ) async {
    emit(const _Initial());

    final result = await _getOrderUseCase.call();

    final OrdersResponse? data = result.data;

    if (result.isSuccessful && data != null) {
      emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            ordersList: data.orders,
          ),
        ),
      );
      return;
    }
    emit(_Error(S.current.noActiveOrdersAtTheMoment));
  }

  Future<void> _acceptOrder(
    _AcceptOrder event,
    Emitter emit,
  ) async {
    emit(const _Initial());

    OrderRequest orderId = OrderRequest(id: event.orderId);

    final Result<OrderResponse, DomainException> result =
        await _acceptOrderUseCase.call(orderId);

    final OrderResponse? data = result.data;

    final OrderEntity? order = data?.order;

    if (result.isSuccessful && order != null) {
      log('success accepted order', name: 'ACCEPT ORDER');

      List<OrderEntity> updatedOrdersList = List.from(_viewModel.ordersList);
      updatedOrdersList.add(order);

      _viewModel = _viewModel.copyWith(ordersList: updatedOrdersList);

      await Future.delayed(const Duration(seconds: 3));
      emit(_Loaded(viewModel: _viewModel));
      return;
    }

    emit(_Error(S.current.youDoNotHaveEnoughBalance));
  }

  Future<void> _cancelOrder(
    _CancelOrder event,
    Emitter emit,
  ) async {
    emit(const _Initial());

    OrderRequest orderId = OrderRequest(id: event.orderId);

    final result = await _cancelOrderUseCase.call(orderId);

    if (result.isSuccessful) {
      log('success canceled order', name: 'CANCEL ORDER');

      List<OrderEntity> orderList = _viewModel.ordersList;

      List<OrderEntity> updatedOrdersList = List.from(orderList)
        ..removeWhere((order) => order.id == event.orderId);

      emit(
        _Loaded(
          viewModel: _viewModel.copyWith(ordersList: updatedOrdersList),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _orderStatusSubscription?.cancel();
    _orderStatusSubscription == null;
    getIt.resetBloc(this);
    return super.close();
  }
}
