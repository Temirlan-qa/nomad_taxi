import 'dart:async';
import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/core/utils/bloc_transformers/transformer_imports.dart';
import 'package:nomad_taxi/src/features/orders/data/models/requests/create_order_request.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/create_order/create_order_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/orders_response/orders_response.dart';

import '../../../../core/service/storage/storage_service_impl.dart';
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
  ) : super(const _Initial());

  final CreateOrderUseCase _createOrderUseCase;

  final StorageServiceImpl _storage = StorageServiceImpl();

  StreamSubscription? _orderStatusSubscription;

  OrderViewModel _viewModel = const OrderViewModel();

  @override
  Future<void> onEventHandler(OrderEvent event, Emitter emit) async {
    await event.when(
      started: () => _started(),
      createOrder: (_) => _createOrder(event as _CreateOrder, emit),
      acceptedOrder: () => _acceptedOrder(event as _AcceptedOrder, emit),
    );
  }

  Future<void> _started() async {
    add(const _AcceptedOrder());
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
      return;
    }

    emit(const _Error('Failed to create order'));
  }

  Future<void> _cancelOrder() async {}

  @override
  Future<void> close() {
    _orderStatusSubscription?.cancel();
    _orderStatusSubscription == null;
    getIt.resetBloc(this);
    return super.close();
  }
}
