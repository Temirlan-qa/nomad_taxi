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
  const factory DriverOrderEvent.waitingForClient({
    required int orderId,
  }) = _WaitingForClient;
  const factory DriverOrderEvent.startRoute({
    required int orderId,
  }) = _StartRoute;
  const factory DriverOrderEvent.completeOrder({
    required int orderId,
  }) = _CompleteOrder;
   const factory DriverOrderEvent.cancelOrder({
    required int orderId,
  }) = _CancelOrder;

  const factory DriverOrderEvent.getNewOrder() = _GetNewOrder;

  const factory DriverOrderEvent.updateOrderList({required OrderEntity newOrder}) = _UpdateOrderList;
}
