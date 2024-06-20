part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started() = _Started;
  const factory OrderEvent.createOrder(
      {required CreateOrderEntity orderEntity}) = _CreateOrder;
  const factory OrderEvent.acceptedOrder() =
      _AcceptedOrder;
}
