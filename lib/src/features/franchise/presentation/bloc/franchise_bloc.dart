import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/core/utils/bloc_transformers/transformer_imports.dart';
import 'package:nomad_taxi/src/features/franchise/domain/usecases/franchise_use_case.dart';

part 'franchise_bloc.freezed.dart';
part 'franchise_event.dart';
part 'franchise_state.dart';

class FranchiseBloc extends BaseBloc<FranchiseEvent, FranchiseState> {
  FranchiseBloc(
    this.franchiseUseCase,
  ) : super(const _Initial());
  final FranchiseUseCase franchiseUseCase;

  final FranchiseViewModel _viewModel = FranchiseViewModel();

  @override
  Future<void> onEventHandler(FranchiseEvent event, Emitter emit) async {
    await event.when(
      franchiseInfo: () => _franchiseInfo(event as _FranchiseInfo, emit),
    );
  }

  Future<void> _franchiseInfo(
    _FranchiseInfo event,
    Emitter emit,
  ) async {
    emit(const _Initial());
    final resultWithdraw = await franchiseUseCase.call();

    final String? dataWithdraw = resultWithdraw.data;

    if (dataWithdraw != null) {
      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(franchise: dataWithdraw),
        ),
      );
    }
    emit(const _Error('Error'));
  }

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}
