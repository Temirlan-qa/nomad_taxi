part of 'driver_order_bloc.dart';

@freezed
class DriverOrderEvent with _$DriverOrderEvent {
  const factory DriverOrderEvent.started() = _Started;
  const factory DriverOrderEvent.getOrderStatus() = _GetOrderStatus;
  const factory DriverOrderEvent.updateOrderStatus({
     required GetOrderStatusResponse updateOrderStatus,
  }) = _UpdateOrderStatus;

}
