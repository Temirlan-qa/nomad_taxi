import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';
import 'package:nomad_taxi/src/features/profile/domain/requests/update_language_request.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/get_user_data_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/update_language_use_case.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends BaseBloc<SettingsEvent, SettingsState> {
  SettingsBloc(
    this._updateLanguageUseCase,
    this._getUserDataUseCase,
  ) : super(const SettingsState.empty());

  final UpdateLanguageUseCase _updateLanguageUseCase;

  final GetUserDataUseCase _getUserDataUseCase;

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
    try {
      final StorageServiceImpl st = StorageServiceImpl();

      if (st.isLoggedIn == false) {
        emit(
          const SettingsState.done(
            languageCode: 'ru',
          ),
        );
        return;
      } else {
        final languageCode = st.getLanguageCode();

        if (languageCode != null) {
          emit(
            SettingsState.done(
              languageCode: languageCode,
            ),
          );
          return;
        } else {
          final result = await _getUserDataUseCase.call();

          if (result.isSuccessful) {
            final String lanCode = result.data!.languageCode ?? 'ru';
            st.setLanguageCode(lanCode);

            emit(
              SettingsState.done(languageCode: lanCode),
            );
            return;
          }
        }
      }
    } catch (e) {
      emit(SettingsState.error(errorMessage: '$e'));
      rethrow;
    }
  }

  // Future<void> _update(
  //   _UpdateSettingsEvent event,
  //   Emitter emit,
  // ) async {
  //   try {
  //     final StorageServiceImpl st = StorageServiceImpl();

  //     final UpdateLanguageRequest request = UpdateLanguageRequest(
  //       languageCode: event.request.languageCode,
  //     );

  //     final result = await _updateLanguageUseCase.call(request);

  //     if (result.isSuccessful) {
  //       st.setLanguageCode(request.languageCode);
  //       emit(SettingsState.done(languageCode: request.languageCode));
  //     } else {
  //       emit(const SettingsState.error(
  //         errorMessage: 'Failed to update language',
  //       ));
  //     }
  //   } catch (e) {
  //     emit(SettingsState.error(errorMessage: '$e'));
  //     rethrow;
  //   }
  // }

  Future<void> _update(
    _UpdateSettingsEvent event,
    Emitter emit,
  ) async {
    emit(const SettingsState.inProgress());
    try {
      final StorageServiceImpl st = StorageServiceImpl();

      _updateLanguageUseCase.call(event.request);

      await st.setLanguageCode(event.request.languageCode);
      emit(SettingsState.done(languageCode: event.request.languageCode));
    } catch (e) {
      emit(SettingsState.error(errorMessage: '$e'));
      rethrow;
    }
  }
}
