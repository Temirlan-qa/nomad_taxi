import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends BaseBloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const _InProgressSettingsState());

  //final SettingsViewModel _viewModel = const SettingsViewModel();

  @override
  Future<void> onEventHandler(SettingsEvent event, Emitter emit) async {
    await event.when(
      retrieve: () => _retrieve(event as _RetrieveSettingsEvent, emit),
      update: (_) => _update(event as _UpdateSettingsEvent, emit),
    );
  }

  Future<void> _retrieve(
    _RetrieveSettingsEvent event,
    Emitter emit,
  ) async {
    emit(const SettingsState.inProgress());
    try {
      final StorageServiceImpl st = StorageServiceImpl();
      await st.init();
      await st.openBox();
      final String? getLanguageCode = st.getLanguageCode();
      if (getLanguageCode == null) {
        return emit(
          const _DoneSettingsState(
            languageCode: 'ru',
          ),
        );
      }
      emit(
        _DoneSettingsState(
          languageCode: getLanguageCode,
        ),
      );
    } catch (e) {
      emit(SettingsState.error(errorMessage: '$e'));
      rethrow;
    }
  }

  Future<void> _update(
    _UpdateSettingsEvent event,
    Emitter emit,
  ) async {
    try {
      final StorageServiceImpl st = StorageServiceImpl();
      await st.init();
      await st.openBox();

      await st.setLanguageCode(event.languageCode);
      emit(SettingsState.done(languageCode: event.languageCode));
    } catch (e) {
      emit(SettingsState.error(errorMessage: '$e'));
      rethrow;
    }
  }
}
