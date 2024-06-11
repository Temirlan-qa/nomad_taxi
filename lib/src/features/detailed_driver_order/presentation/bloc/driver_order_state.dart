part of 'driver_order_bloc.dart';

@freezed 
class DriverOrderState with _$DriverOrderState {
  const factory DriverOrderState.initial() = _Initial;
  const factory DriverOrderState.loaded({required DriverOrderViewModel viewModel}) = _Loaded;
}

@freezed 
class DriverOrderViewModel with _$DriverOrderViewModel {
  const factory DriverOrderViewModel({
    GetOrderStatusResponse? updatedOrderStatus,
  }) = _DriverOrderViewModel;
}
