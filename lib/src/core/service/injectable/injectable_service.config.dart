// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../features/auth/data/repositories/i_auth_repository.dart'
    as _i44;
import '../../../features/auth/domain/repositories/auth_repository_impl.dart'
    as _i45;
import '../../../features/auth/domain/usecases/login_use_case.dart' as _i50;
import '../../../features/auth/domain/usecases/refresh_token_use_case.dart'
    as _i48;
import '../../../features/auth/domain/usecases/resend_code_use_case.dart'
    as _i49;
import '../../../features/auth/domain/usecases/verify_user_case.dart' as _i47;
import '../../../features/detailed_driver_order/data/client/order_web_socket_client.dart'
    as _i20;
import '../../../features/detailed_driver_order/data/datasources/remote/driver_order_remote_impl.dart'
    as _i19;
import '../../../features/detailed_driver_order/data/datasources/remote/i_driver_order.dart'
    as _i18;
import '../../../features/detailed_driver_order/data/repositories/driver_order_repository.dart'
    as _i43;
import '../../../features/detailed_driver_order/domain/repositories/i_driver_order_repository.dart'
    as _i42;
import '../../../features/detailed_driver_order/domain/usecases/accept_order_use_case.dart'
    as _i29;
import '../../../features/detailed_driver_order/domain/usecases/cancel_order_use_case.dart'
    as _i25;
import '../../../features/detailed_driver_order/domain/usecases/complete_order_use_case.dart'
    as _i27;
import '../../../features/detailed_driver_order/domain/usecases/get_order_status_use_case.dart'
    as _i46;
import '../../../features/detailed_driver_order/domain/usecases/get_orders_use_case.dart'
    as _i28;
import '../../../features/detailed_driver_order/domain/usecases/start_route_use_case.dart'
    as _i26;
import '../../../features/detailed_driver_order/domain/usecases/waiting_for_client_use_case.dart'
    as _i30;
import '../../../features/help/data/datasources/help_remote_impl.dart' as _i7;
import '../../../features/help/data/datasources/i_help_remote.dart' as _i6;
import '../../../features/help/data/repositories/profile_repository_impl.dart'
    as _i13;
import '../../../features/help/domain/repositories/i_help_repository.dart'
    as _i12;
import '../../../features/help/domain/usecases/get_questions_use_case.dart'
    as _i21;
import '../../../features/orders/data/datasources/remote/i_orders_remote.dart'
    as _i10;
import '../../../features/orders/data/datasources/remote/orders_remote_impl.dart'
    as _i11;
import '../../../features/orders/data/repositories/orders_repository_impl.dart'
    as _i17;
import '../../../features/orders/domain/repositories/i_orders_repository.dart'
    as _i16;
import '../../../features/orders/domain/usecases/create_order_use_case.dart'
    as _i24;
import '../../../features/orders/presentation/bloc/order_bloc.dart' as _i31;
import '../../../features/profile/data/datasources/remote/i_profile_remote.dart'
    as _i8;
import '../../../features/profile/data/datasources/remote/profile_remote_impl.dart'
    as _i9;
import '../../../features/profile/data/repositories/profile_repository_impl.dart'
    as _i23;
import '../../../features/profile/domain/repositories/i_profile_repository.dart'
    as _i22;
import '../../../features/profile/domain/usecases/delete_account_use_case.dart'
    as _i39;
import '../../../features/profile/domain/usecases/get_user_data_use_case.dart'
    as _i33;
import '../../../features/profile/domain/usecases/log_out_use_case.dart'
    as _i36;
import '../../../features/profile/domain/usecases/pay_info_use_case.dart'
    as _i40;
import '../../../features/profile/domain/usecases/toggle_partner_status_use_case.dart'
    as _i34;
import '../../../features/profile/domain/usecases/update_fcm_token_use_case.dart'
    as _i37;
import '../../../features/profile/domain/usecases/update_language_use_case.dart'
    as _i41;
import '../../../features/profile/domain/usecases/update_partner_data_use_case.dart'
    as _i32;
import '../../../features/profile/domain/usecases/update_user_info_use_case.dart'
    as _i38;
import '../../../features/profile/domain/usecases/withdraw_info_use_case.dart'
    as _i35;
import '../../api/client/rest/dio/dio_client.dart' as _i5;
import '../../utils/helpers/connectivity_helper.dart' as _i3;
import '../../utils/helpers/isolate_manager.dart' as _i4;
import '../auth/auth_service_impl.dart' as _i15;
import '../auth/i_auth_service.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ConnectivityHelper>(() => _i3.ConnectivityHelper());
    gh.singleton<_i4.IsolateManager>(() => _i4.IsolateManager());
    await gh.singletonAsync<_i5.DioRestClient>(
      () {
        final i = _i5.DioRestClient();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i6.IHelpRemote>(
      () => _i7.HelpRemoteImpl(),
      instanceName: 'HelpRemoteImpl',
    );
    gh.lazySingleton<_i8.IProfileRemote>(
      () => _i9.ProfileRemoteImpl(),
      instanceName: 'ProfileRemoteImpl',
    );
    gh.lazySingleton<_i10.IOrdersRemote>(
      () => _i11.OrdersRemoteImpl(),
      instanceName: 'OrdersRemoteImpl',
    );
    gh.lazySingleton<_i12.IHelpRepository>(
      () => _i13.HelpRepositoryImpl(
          gh<_i6.IHelpRemote>(instanceName: 'HelpRemoteImpl')),
      instanceName: 'HelpRepositoryImpl',
    );
    gh.lazySingleton<_i14.IAuthService>(
      () => _i15.AuthServiceImpl(gh<_i5.DioRestClient>()),
      instanceName: 'AuthServiceImpl',
    );
    gh.lazySingleton<_i16.IOrdersRepository>(
      () => _i17.OrdersRepositoryImpl(
          gh<_i10.IOrdersRemote>(instanceName: 'OrdersRemoteImpl')),
      instanceName: 'OrdersRepositoryImpl',
    );
    gh.lazySingleton<_i18.IDriverOrder>(
      () => _i19.DriverOrderRemoteImpl(gh<_i20.OrderWebSocketClient>()),
      instanceName: 'DriverOrderRemoteImpl',
    );
    gh.lazySingleton<_i21.GetQuestionsUseCase>(() => _i21.GetQuestionsUseCase(
        gh<_i12.IHelpRepository>(instanceName: 'HelpRepositoryImpl')));
    gh.lazySingleton<_i22.IProfileRepository>(
      () => _i23.ProfileRepositoryImpl(
          gh<_i8.IProfileRemote>(instanceName: 'ProfileRemoteImpl')),
      instanceName: 'ProfileRepositoryImpl',
    );
    gh.lazySingleton<_i24.CreateOrderUseCase>(() => _i24.CreateOrderUseCase(
        gh<_i16.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i25.CancelOrderUseCase>(() => _i25.CancelOrderUseCase(
        gh<_i16.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i26.StartRouteUseCase>(() => _i26.StartRouteUseCase(
        gh<_i16.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i27.CompleteOrderUseCase>(() => _i27.CompleteOrderUseCase(
        gh<_i16.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i28.GetOrdersUseCase>(() => _i28.GetOrdersUseCase(
        gh<_i16.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i29.AcceptOrderUseCase>(() => _i29.AcceptOrderUseCase(
        gh<_i16.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i30.WaitingForClientUseCase>(() =>
        _i30.WaitingForClientUseCase(
            gh<_i16.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.factory<_i31.OrderBloc>(
        () => _i31.OrderBloc(gh<_i24.CreateOrderUseCase>()));
    gh.lazySingleton<_i32.UpdatePartnerDataUseCase>(() =>
        _i32.UpdatePartnerDataUseCase(gh<_i22.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i33.GetUserDataUseCase>(() => _i33.GetUserDataUseCase(
        gh<_i22.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i34.TogglePartnerStatusUseCase>(() =>
        _i34.TogglePartnerStatusUseCase(gh<_i22.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i35.WithdrawInfoUseCase>(() => _i35.WithdrawInfoUseCase(
        gh<_i22.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i36.LogOutUseCase>(() => _i36.LogOutUseCase(
        gh<_i22.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i37.UpdateFcmTokenUseCase>(() =>
        _i37.UpdateFcmTokenUseCase(gh<_i22.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i38.UpdateUserInfoUseCase>(() =>
        _i38.UpdateUserInfoUseCase(gh<_i22.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i39.DeleteAccountUseCase>(() => _i39.DeleteAccountUseCase(
        gh<_i22.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i40.PayInfoUseCase>(() => _i40.PayInfoUseCase(
        gh<_i22.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i41.UpdateLanguageUseCase>(() =>
        _i41.UpdateLanguageUseCase(gh<_i22.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i42.IDriverOrderRepository>(
      () => _i43.DriverOrderRepository(
          gh<_i18.IDriverOrder>(instanceName: 'DriverOrderRemoteImpl')),
      instanceName: 'DriverOrderRepository',
    );
    gh.lazySingleton<_i44.IAuthRepository>(
      () => _i45.AuthRepositoryImpl(
          gh<_i14.IAuthService>(instanceName: 'AuthServiceImpl')),
      instanceName: 'AuthRepositoryImpl',
    );
    gh.lazySingleton<_i46.GetOrderStatusUseCase>(() =>
        _i46.GetOrderStatusUseCase(gh<_i42.IDriverOrderRepository>(
            instanceName: 'DriverOrderRepository')));
    gh.lazySingleton<_i47.VerifyUseCase>(() => _i47.VerifyUseCase(
        gh<_i44.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i48.RefreshTokenUseCase>(() => _i48.RefreshTokenUseCase(
        gh<_i44.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i49.ResendCodeUseCase>(() => _i49.ResendCodeUseCase(
        gh<_i44.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i50.LoginUseCase>(() => _i50.LoginUseCase(
        gh<_i44.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    return this;
  }
}
