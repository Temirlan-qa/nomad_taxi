import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/order_search/domain/entities/searched_order.dart';
import 'package:nomad_taxi/src/features/order_search/domain/usecases/get_searched_addresses_use_case.dart';

part 'searched_order_bloc.freezed.dart';
part 'searched_order_event.dart';
part 'searched_order_state.dart';

class SearchedOrderBloc
    extends BaseBloc<SearchedOrderEvent, SearchedOrderState> {
  SearchedOrderBloc(
    this.getSearchedAddressesUseCase,
  ) : super(const _Initial());

  final GetSearchedAddressesUseCase getSearchedAddressesUseCase;

  final SearchedOrderViewModel _viewModel = SearchedOrderViewModel();

  @override
  Future<void> onEventHandler(SearchedOrderEvent event, Emitter emit) async {
    await event.when(
      getSearchedOrder: () =>
          _getSearchedOrder(event as _GetSearchedOrder, emit),
    );
  }

  Future<void> _getSearchedOrder(
    _GetSearchedOrder event,
    Emitter emit,
  ) async {
    emit(const _Loading());
    final result = await getSearchedAddressesUseCase.call();
    final data = result.data;

    if (result.isSuccessful && data != null) {
      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(searchedOrderEntity: data),
        ),
      );
    }
    emit(const _Loading());
  }

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}
