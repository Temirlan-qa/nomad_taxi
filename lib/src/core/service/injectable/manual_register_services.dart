import 'package:nomad_taxi/src/core/service/injectable/service_register_proxy.dart';
import 'package:nomad_taxi/src/features/auth/domain/usecases/resend_code_use_case.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/usecases/complete_order_use_case.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/usecases/start_route_use_case.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/domain/usecases/waiting_for_client_use_case.dart';
import 'package:nomad_taxi/src/features/franchise/domain/usecases/franchise_use_case.dart';
import 'package:nomad_taxi/src/features/franchise/presentation/bloc/franchise_bloc.dart';
import 'package:nomad_taxi/src/features/help/presentation/bloc/help_bloc.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/activate_promocode_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/get_user_data_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/pay_info_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/update_fcm_token_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/update_partner_data_use_case.dart';
import 'package:nomad_taxi/src/features/profile/domain/usecases/withdraw_info_use_case.dart';
import 'package:nomad_taxi/src/features/promo_code/presentation/bloc/activate_promocode_bloc.dart';
import 'package:nomad_taxi/src/features/settings/presentation/bloc/settings/settings_bloc.dart';
import 'package:nomad_taxi/src/features/transfer_money/presentation/bloc/balance_bloc.dart';

import '../../../features/auth/domain/usecases/login_use_case.dart';
import '../../../features/auth/domain/usecases/verify_user_case.dart';
import '../../../features/auth/presentation/bloc/auth_bloc.dart';
import '../../../features/detailed_driver_order/data/client/order_web_socket_client.dart';
import '../../../features/detailed_driver_order/domain/usecases/get_new_order_use_case.dart';
import '../../../features/detailed_driver_order/domain/usecases/get_order_status_use_case.dart';
import '../../../features/detailed_driver_order/presentation/bloc/driver_order_bloc.dart';
import '../../../features/help/domain/usecases/get_questions_use_case.dart';
import '../../../features/detailed_driver_order/domain/usecases/accept_order_use_case.dart';
import '../../../features/detailed_driver_order/domain/usecases/cancel_order_use_case.dart';
import '../../../features/detailed_driver_order/domain/usecases/get_orders_use_case.dart';
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
      getIt<UpdatePartnerDataUseCase>(),
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

  getIt.registerBloc<DriverOrderBloc>(
    () => DriverOrderBloc(
      getIt<GetOrderStatusUseCase>(),
      getIt<GetOrdersUseCase>(),
      getIt<AcceptOrderUseCase>(),
      getIt<CancelOrderUseCase>(),
      getIt<WaitingForClientUseCase>(),
      getIt<StartRouteUseCase>(),
      getIt<CompleteOrderUseCase>(),
      getIt<GetNewOrderUseCase>(),
    ),
  );

  getIt.registerBloc<FranchiseBloc>(
    () => FranchiseBloc(
      getIt<FranchiseUseCase>(),
    ),
  );

  getIt.registerSingleton<OrderWebSocketClient>(OrderWebSocketClient());

  getIt.registerBloc<HelpBloc>(
    () => HelpBloc(
      getIt<GetQuestionsUseCase>(),
    ),
  );
  getIt.registerBloc<ActivatePromocodeBloc>(
    () => ActivatePromocodeBloc(getIt<ActivatePromocodeUseCase>()),
  );
}
