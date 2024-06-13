part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loaded({
    required OrderViewModel viewModel,
  }) = _Loaded;
  const factory OrderState.error(String error) = _Error;
}

@freezed
class OrderViewModel with _$OrderViewModel {
  const factory OrderViewModel({
    OrdersResponse? orders,
    @Default([]) List<OrderEntity> ordersList,
  }) = _OrderViewModel;
}
