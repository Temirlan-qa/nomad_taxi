part of 'searched_order_bloc.dart';

@freezed
class SearchedOrderEvent with _$SearchedOrderEvent {
  const factory SearchedOrderEvent.getSearchedOrder() = _GetSearchedOrder;
  const factory SearchedOrderEvent.getCashbackInfo() = _GetCashbackInfo;
}
