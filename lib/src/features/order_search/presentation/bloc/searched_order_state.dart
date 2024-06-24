part of 'searched_order_bloc.dart';

@freezed
class SearchedOrderState with _$SearchedOrderState {
  const factory SearchedOrderState.initial() = _Initial;
  const factory SearchedOrderState.loading() = _Loading;
  const factory SearchedOrderState.loaded({
    required SearchedOrderViewModel viewModel,
  }) = _Loaded;
}

@freezed
class SearchedOrderViewModel with _$SearchedOrderViewModel {
  factory SearchedOrderViewModel({SearchedOrderEntity? searchedOrderEntity}) =
      _SearchedOrderViewModel;
}
