import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/core/utils/bloc_transformers/transformer_imports.dart';
import 'package:nomad_taxi/src/features/main/domain/models/find_town_id_request.dart';
import 'package:nomad_taxi/src/features/main/domain/usecases/find_town_id_use_case.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/find_town_by_location_response/find_town_by_location_response.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/inside_city/inside_city_entity.dart';
import 'package:nomad_taxi/src/features/orders/domain/entities/support/support_entity.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends BaseBloc<MainEvent, MainState> {
  MainBloc(
    this.findTownIdUseCase,
  ) : super(const _Initial());
  final FindTownIdUseCase findTownIdUseCase;

  final MainViewModel _viewModel = MainViewModel();

  @override
  Future<void> onEventHandler(MainEvent event, Emitter emit) async {
    await event.when(
      findTown: (_, __) => _findTown(event as _FindTown, emit),
    );
  }

  Future<void> _findTown(
    _FindTown event,
    Emitter emit,
  ) async {
    emit(const _Initial());
    final requestModel = FindTownIdRequest(
      latitude: event.latitude,
      longitude: event.longitude,
    );
    final result = await findTownIdUseCase.call(requestModel);

    final FindTownByLocationResponse? resultData = result.data;

    if (resultData != null) {
      final data = resultData.data;

      return emit(
        _Loaded(
          viewModel: _viewModel.copyWith(
            id: data.id,
            title: data.title,
            status: data.status,
            lat: data.lat,
            lng: data.lng,
            radius: data.radius,
            languageCode: data.languageCode ?? 'ru',
            support: data.support,
            insideCity: data.insideCity,
            franchiseLink: data.franchiseLink,
          ),
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
