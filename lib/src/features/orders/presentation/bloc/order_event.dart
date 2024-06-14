part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started() = _Started;
  const factory OrderEvent.getOrders() = _GetOrders;
  const factory OrderEvent.acceptOrder({
    required int orderId,
  }) = _AcceptOrder;
  const factory OrderEvent.cancelOrder({
    required int orderId,
  }) = _CancelOrder;
}
