import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/exceptions/domain_exception.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/profile/domain/entities/promocode_response/promocode_response.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/activate_promocode_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/activate_promocode_use_case.dart';

part 'activate_promocode_bloc.freezed.dart';
part 'activate_promocode_event.dart';
part 'activate_promocode_state.dart';

class ActivatePromocodeBloc
    extends BaseBloc<ActivatePromocodeEvent, ActivatePromocodeState> {
  ActivatePromocodeBloc(
    this._activatePromocodeUseCase,
  ) : super(const _Initial());

  final ActivatePromocodeUseCase _activatePromocodeUseCase;

  final ActivatePromocodeViewModel _viewModel = ActivatePromocodeViewModel();

  @override
  Future<void> onEventHandler(
      ActivatePromocodeEvent event, Emitter emit) async {
    await event.when(
      acivatePromocode: (ActivatePromocodeRequest request) =>
          _activatePromocode(event as _ActivatePromocode, emit),
    );
  }

  Future<void> _activatePromocode(
    _ActivatePromocode event,
    Emitter emit,
  ) async {
    emit(const _Loading());
    final ActivatePromocodeRequest request = event.request;
    final result = await _activatePromocodeUseCase.call(request);

    if (result.isSuccessful) {
      return emit(_Loaded(
          viewModel: _viewModel.copyWith(promocodeResponse: result.data)));
    } else {
      return emit(_Error(
          exception: UnknownException(message: result.failure?.message)));
    }
  }

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}
