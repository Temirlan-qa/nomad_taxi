import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/toggle_partner_status_use_case.dart';

import '../../../../core/service/injectable/injectable_service.dart';

part 'toggle_status_bloc.freezed.dart';
part 'toggle_status_event.dart';
part 'toggle_status_state.dart';

class ToggleStatusBloc extends BaseBloc<ToggleStatusEvent, ToggleStatusState> {
  ToggleStatusBloc(
    this._togglePartnerStatusUseCase,
  ) : super(const _Initial());

  final TogglePartnerStatusUseCase _togglePartnerStatusUseCase;

  final ToggleStatusViewModel _viewModel = ToggleStatusViewModel();

  @override
  Future<void> onEventHandler(ToggleStatusEvent event, Emitter emit) async {
    await event.when(
      togglePartnerStatus: () =>
          _togglePartnerStatus(event as _TogglePartnerStatus, emit),
    );
  }

  Future<void> _togglePartnerStatus(
    _TogglePartnerStatus event,
    Emitter emit,
  ) async {
    final result = await _togglePartnerStatusUseCase.call();
    if (result.isSuccessful) {
      return emit(
        _Loaded(
          viewModel:
              _viewModel.copyWith(pStatus: result.data?.pStatus ?? 'offline'),
        ),
      );
    }
  }

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}
