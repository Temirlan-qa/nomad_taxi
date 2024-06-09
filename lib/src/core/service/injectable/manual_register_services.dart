import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/auth/domain/usecases/resend_code_use_case.dart';
import 'package:nomad_taxi/src/features/orders/domain/usecases/get_order_use_case.dart';
import 'package:nomad_taxi/src/features/orders/presentation/bloc/order_bloc.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/get_user_data_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/pay_info_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/update_fcm_token_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/withdraw_info_use_case.dart';
import 'package:nomad_taxi/src/features/settings/presentation/bloc/settings/settings_bloc.dart';
import 'package:nomad_taxi/src/features/transfer_money/presentation/bloc/balance_bloc.dart';

import '../../../features/auth/domain/usecases/login_use_case.dart';
import '../../../features/auth/domain/usecases/verify_user_case.dart';
import '../../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../../features/profile/domain/usecases/update_language_use_case.dart';
import 'exports/all.dart';
import 'injectable_service.dart';

void manualRegisterServices() {
  getIt.registerBloc<ProfileBloc>(
    () => ProfileBloc(
      getIt<UpdateUserInfoUseCase>(),
      getIt<LogOutUseCase>(),
      getIt<DeleteAccountUseCase>(),
      getIt<GetUserDataUseCase>(),
      getIt<UpdateFcmTokenUseCase>(),
      getIt<UpdateLanguageUseCase>(),
    ),
  );
  getIt.registerBloc<AuthBloc>(
    () => AuthBloc(
      getIt<LoginUseCase>(),
      getIt<VerifyUseCase>(),
      getIt<ResendCodeUseCase>(),
    ),
  );

  getIt.registerBloc<SettingsBloc>(
    () => SettingsBloc(
      getIt<UpdateLanguageUseCase>(),
      getIt<GetUserDataUseCase>(),
    ),
  );

  getIt.registerBloc<BalanceBloc>(
    () => BalanceBloc(
      getIt<PayInfoUseCase>(),
      getIt<WithdrawInfoUseCase>(),
    ),
  );

  getIt.registerBloc<OrderBloc>(
    () => OrderBloc(
      getIt<GetOrderUseCase>(),
    ),
  );
}
