import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/auth/domain/usecases/login_use_case.dart';

import '../../../features/auth/presentation/bloc/auth_bloc.dart';
import 'exports/all.dart';
import 'injectable_service.dart';

void manualRegisterServices() {
  getIt.registerBloc<ProfileBloc>(
    () => ProfileBloc(
      getIt<UpdateUserInfoUseCase>(),
      getIt<LogOutUseCase>(),
      getIt<DeleteAccountUseCase>(),
    ),
  );
  getIt.registerBloc<AuthBloc>(() => AuthBloc(getIt<LoginUseCase>()),
      factory: true);
}
