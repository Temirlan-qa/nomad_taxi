part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started({required int id}) = _Started;
  const factory OrderEvent.createOrder(
      {required CreateOrderEntity orderEntity}) = _CreateOrder;
  const factory OrderEvent.getOrderStatus({required int orderId}) =
      _GetOrderStatus;
  const factory OrderEvent.updateOrderStatus({
    required GetOrderStatusResponse updateOrderStatus,
  }) = _UpdateOrderStatus;
  const factory OrderEvent.acceptedOrder() = _AcceptedOrder;
}
