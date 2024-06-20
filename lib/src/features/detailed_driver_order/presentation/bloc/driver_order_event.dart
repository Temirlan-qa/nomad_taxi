part of 'driver_order_bloc.dart';

@freezed
class DriverOrderEvent with _$DriverOrderEvent {
  const factory DriverOrderEvent.started() = _Started;
  const factory DriverOrderEvent.getOrderStatus() = _GetOrderStatus;
  const factory DriverOrderEvent.getOrders() = _GetOrders;
  const factory DriverOrderEvent.updateOrderStatus({
    required GetOrderStatusResponse updateOrderStatus,
  }) = _UpdateOrderStatus;

  const factory DriverOrderEvent.acceptOrder({required int orderId}) =
      _AcceptOrder;
   const factory DriverOrderEvent.cancelOrder({
    required int orderId,
  }) = _CancelOrder;
}
