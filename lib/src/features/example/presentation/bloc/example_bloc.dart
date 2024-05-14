import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';

part 'example_bloc.freezed.dart';
part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends BaseBloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(const _Initial()) {
    on<_Started>(
      (_Started event, Emitter<ExampleState> emit) => _started(emit),
      transformer: droppable(),
    );
  }

  @override
  void onEventHandler(ExampleEvent event, Emitter<dynamic> emit) {}
  Future<void> _started(
    Emitter<ExampleState> emit,
  ) async {}

  @override
  Future<void> close() {
    getIt.resetBloc(this);
    return super.close();
  }
}
