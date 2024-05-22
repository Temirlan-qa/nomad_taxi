import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc.dart';
import 'package:nomad_taxi/src/features/settings/domain/model/settings.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends BaseBloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const _InProgressSettingsState());

  @override
  Future<void> onEventHandler(SettingsEvent event, Emitter emit) async {
    event.when(
      retrieve: () {},
      update: (_) => {},
    );
  }
}
