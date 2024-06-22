part of 'driver_order_bloc.dart';

@freezed 
class DriverOrderState with _$DriverOrderState {
  const factory DriverOrderState.initial() = _Initial;
  const factory DriverOrderState.waiting() = _Waiting;
  const factory DriverOrderState.start() = _Start;
  const factory DriverOrderState.loaded({required DriverOrderViewModel viewModel}) = _Loaded;
  const factory DriverOrderState.error(String errorMessage) = _Error;
}

@freezed 
class DriverOrderViewModel with _$DriverOrderViewModel {
  const factory DriverOrderViewModel({
    GetOrderStatusResponse? updatedOrderStatus,
    @Default([]) List<OrderEntity> ordersList,
    OrderEntity? activeOrder,
  }) = _DriverOrderViewModel;
}
