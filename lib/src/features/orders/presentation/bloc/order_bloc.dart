import 'dart:async';
import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/core/utils/bloc_transformers/transformer_imports.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/usecases/get_order_status_use_case.dart';
import 'package:nomad_taxi/src/features/orders/data/models/requests/create_order_request.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/create_order/create_order_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/orders_response/orders_response.dart';

import '../../../../core/service/storage/storage_service_impl.dart';
import '../../../detailed_driver_order/domain/entities/get_order_status_response.dart';
import '../../../detailed_driver_order/domain/usecases/get_order_use_case.dart';
import '../../data/models/requests/accept_order_request.dart';
import '../../domain/entities/order/order_entity.dart';
import '../../domain/entities/response/order_response.dart';
import '../../domain/usecases/create_order_use_case.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

@injectable
@factoryMethod
class OrderBloc extends BaseBloc<OrderEvent, OrderState> {
  OrderBloc(
    this._createOrderUseCase,
    this._getOrderStatusUseCase,
    this._getOrderUseCase,
  ) : super(const _Initial());

  final CreateOrderUseCase _createOrderUseCase;

  final GetOrderStatusUseCase _getOrderStatusUseCase;

  final GetOrderUseCase _getOrderUseCase;

  final StorageServiceImpl _storage = StorageServiceImpl();

  StreamSubscription? _orderStatusSubscription;

  OrderViewModel _viewModel = const OrderViewModel();

  @override
  Future<void> onEventHandler(OrderEvent event, Emitter emit) async {
    await event.when(
      started: (_) => _started(event as _Started),
      createOrder: (_) => _createOrder(event as _CreateOrder, emit),
      acceptedOrder: () => _acceptedOrder(event as _AcceptedOrder, emit),
      getOrderStatus: (_) => _getOrderStatus(event as _GetOrderStatus),
      updateOrderStatus: (_) =>
          _updateOrderStatus(event as _UpdateOrderStatus, emit),
    );
  }

  Future<void> _started(_Started event) async {
    add(const _AcceptedOrder());
    add(_GetOrderStatus(orderId: event.id));
  }

  Future<void> _getOrderStatus(_GetOrderStatus event) async {
    await _orderStatusSubscription?.cancel();
    _orderStatusSubscription = null;

    OrderRequest orderId = OrderRequest(id: event.orderId);

    _orderStatusSubscription = _getOrderStatusUseCase(orderId).listen((result) {
      GetOrderStatusResponse? data = result.data;
      if (result.isSuccessful && data != null) {
        add(_UpdateOrderStatus(updateOrderStatus: data));
      }
    });
  }

  Future<void> _updateOrderStatus(
      _UpdateOrderStatus event, Emitter emit) async {
    GetOrderStatusResponse response = event.updateOrderStatus;

    String orderStatus = response.order.status;

    _viewModel = _viewModel.copyWith(orderStatus: orderStatus);

    log(orderStatus, name: '_updateOrderStatus');

    // if (orderStatus == 'accepted') {
    //   final result =
    //       await _getOrderUseCase.call(OrderRequest(id: response.order.orderId));

    //   OrderResponse? orderResponse = result.data;

    //   OrderEntity? order = orderResponse?.order;

    //   if (result.isSuccessful && order != null) {
    //     _storage.saveOrder(order);

    //     _viewModel = _viewModel.copyWith(orderAccepted: order);

    //     emit(_Loaded(viewModel: _viewModel));
    //     log('', name: 'AcceptedOrderSave');
    //   }
    // }

    // if (orderStatus == 'canceled') {
    //   _storage.deleteOrder();
    // }

    emit(_Loaded(viewModel: _viewModel));
  }

  Future<void> _acceptedOrder(_AcceptedOrder event, Emitter emit) async {
    final OrderEntity? orderAccepted = _storage.loadOrder();

    if (orderAccepted != null) {
      _viewModel = _viewModel.copyWith(orderAccepted: orderAccepted);

      emit(_Loaded(viewModel: _viewModel));
    }
  }

  Future<void> _createOrder(_CreateOrder event, Emitter emit) async {
    final createOrderRequest = CreateOrderRequest(event.orderEntity);

    final result = await _createOrderUseCase.call(createOrderRequest);

    OrderResponse? data = result.data;

    OrderEntity? order = data?.order;

    if (result.isSuccessful && order != null) {
      log('order created success', name: 'CreateOrder');
      _viewModel = _viewModel.copyWith(orderAccepted: order);
      return emit(_Loaded(viewModel: _viewModel));
    }
    emit(const _Error('Failed to create order'));
  }

  @override
  Future<void> close() {
    _orderStatusSubscription?.cancel();
    _orderStatusSubscription = null;
    getIt.resetBloc(this);
    return super.close();
  }
}
