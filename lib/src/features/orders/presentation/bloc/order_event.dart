part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.getOrders() = _GetOrders;
  const factory OrderEvent.acceptOrder({
    required String orderId,
  }) = _AcceptOrder;
  const factory OrderEvent.cancelOrder({
    required String orderId,
  }) = _CancelOrder;
}
