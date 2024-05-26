import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/get_user_data_use_case.dart';
import 'package:nomad_taxi/src/features/settings/presentation/bloc/settings/settings_bloc.dart';

import 'exports/all.dart';
import 'injectable_service.dart';

void manualRegisterServices() {
  getIt.registerBloc<ProfileBloc>(
    () => ProfileBloc(
      getIt<UpdateUserInfoUseCase>(),
      getIt<LogOutUseCase>(),
      getIt<DeleteAccountUseCase>(),
      getIt<GetUserDataUseCase>(),
    ),
  );

  getIt.registerBloc<SettingsBloc>(
    () => SettingsBloc(),
  );
}
