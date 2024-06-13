import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/help/domain/entities/questions.dart';
import 'package:nomad_taxi/src/features/help/domain/usecases/get_questions_use_case.dart';

part 'help_bloc.freezed.dart';
part 'help_event.dart';
part 'help_state.dart';

class HelpBloc extends BaseBloc<HelpEvent, HelpState> {
  HelpBloc(
    this.getQuestionsUseCase,
  ) : super(const _Initial());

  final GetQuestionsUseCase getQuestionsUseCase;

  final HelpViewModel _viewModel = HelpViewModel();

  @override
  Future<void> onEventHandler(HelpEvent event, Emitter emit) async {
    await event.when(
      getQuestions: () => _getQuestions(event as _GetQuestions, emit),
    );
  }

  Future<void> _getQuestions(
    _GetQuestions event,
    Emitter emit,
  ) async {
    emit(const _Loading());
    final result = await getQuestionsUseCase.call();
    final data = result.data;

    if (result.isSuccessful && data != null) {
      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(questions: data),
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
