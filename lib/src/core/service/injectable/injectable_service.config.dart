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
    as _i33;
import '../../../features/auth/domain/repositories/auth_repository_impl.dart'
    as _i34;
import '../../../features/auth/domain/usecases/login_use_case.dart' as _i39;
import '../../../features/auth/domain/usecases/refresh_token_use_case.dart'
    as _i37;
import '../../../features/auth/domain/usecases/resend_code_use_case.dart'
    as _i38;
import '../../../features/auth/domain/usecases/verify_user_case.dart' as _i36;
import '../../../features/detailed_driver_order/data/client/order_web_socket_client.dart'
    as _i16;
import '../../../features/detailed_driver_order/data/datasources/remote/driver_order_remote_impl.dart'
    as _i15;
import '../../../features/detailed_driver_order/data/datasources/remote/i_driver_order.dart'
    as _i14;
import '../../../features/detailed_driver_order/data/repositories/driver_order_repository.dart'
    as _i32;
import '../../../features/detailed_driver_order/domain/repositories/i_driver_order_repository.dart'
    as _i31;
import '../../../features/detailed_driver_order/domain/usecases/get_order_status_use_case.dart'
    as _i35;
import '../../../features/orders/data/datasources/remote/i_orders_remote.dart'
    as _i8;
import '../../../features/orders/data/datasources/remote/orders_remote_impl.dart'
    as _i9;
import '../../../features/orders/data/repositories/orders_repository_impl.dart'
    as _i13;
import '../../../features/orders/domain/repositories/i_orders_repository.dart'
    as _i12;
import '../../../features/orders/domain/usecases/get_order_use_case.dart'
    as _i19;
import '../../../features/orders/domain/usecases/get_orders_use_case.dart'
    as _i20;
import '../../../features/profile/data/datasources/remote/i_profile_remote.dart'
    as _i6;
import '../../../features/profile/data/datasources/remote/profile_remote_impl.dart'
    as _i7;
import '../../../features/profile/data/repositories/profile_repository_impl.dart'
    as _i18;
import '../../../features/profile/domain/repositories/i_profile_repository.dart'
    as _i17;
import '../../../features/profile/domain/usecases/delete_account_use_case.dart'
    as _i28;
import '../../../features/profile/domain/usecases/get_user_data_use_case.dart'
    as _i22;
import '../../../features/profile/domain/usecases/log_out_use_case.dart'
    as _i25;
import '../../../features/profile/domain/usecases/pay_info_use_case.dart'
    as _i29;
import '../../../features/profile/domain/usecases/toggle_partner_status_use_case.dart'
    as _i23;
import '../../../features/profile/domain/usecases/update_fcm_token_use_case.dart'
    as _i26;
import '../../../features/profile/domain/usecases/update_language_use_case.dart'
    as _i30;
import '../../../features/profile/domain/usecases/update_partner_data_use_case.dart'
    as _i21;
import '../../../features/profile/domain/usecases/update_user_info_use_case.dart'
    as _i27;
import '../../../features/profile/domain/usecases/withdraw_info_use_case.dart'
    as _i24;
import '../../api/client/rest/dio/dio_client.dart' as _i5;
import '../../utils/helpers/connectivity_helper.dart' as _i3;
import '../../utils/helpers/isolate_manager.dart' as _i4;
import '../auth/auth_service_impl.dart' as _i11;
import '../auth/i_auth_service.dart' as _i10;

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
    gh.lazySingleton<_i6.IProfileRemote>(
      () => _i7.ProfileRemoteImpl(),
      instanceName: 'ProfileRemoteImpl',
    );
    gh.lazySingleton<_i8.IOrdersRemote>(
      () => _i9.OrdersRemoteImpl(),
      instanceName: 'OrdersRemoteImpl',
    );
    gh.lazySingleton<_i10.IAuthService>(
      () => _i11.AuthServiceImpl(gh<_i5.DioRestClient>()),
      instanceName: 'AuthServiceImpl',
    );
    gh.lazySingleton<_i12.IOrdersRepository>(
      () => _i13.OrdersRepositoryImpl(
          gh<_i8.IOrdersRemote>(instanceName: 'OrdersRemoteImpl')),
      instanceName: 'OrdersRepositoryImpl',
    );
    gh.lazySingleton<_i14.IDriverOrder>(
      () => _i15.DriverOrderRemoteImpl(gh<_i16.OrderWebSocketClient>()),
      instanceName: 'DriverOrderRemoteImpl',
    );
    gh.lazySingleton<_i17.IProfileRepository>(
      () => _i18.ProfileRepositoryImpl(
          gh<_i6.IProfileRemote>(instanceName: 'ProfileRemoteImpl')),
      instanceName: 'ProfileRepositoryImpl',
    );
    gh.lazySingleton<_i19.GetOrderUseCase>(() => _i19.GetOrderUseCase(
        gh<_i12.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i20.GetOrderUseCase>(() => _i20.GetOrderUseCase(
        gh<_i12.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i21.UpdatePartnerDataUseCase>(() =>
        _i21.UpdatePartnerDataUseCase(gh<_i17.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i22.GetUserDataUseCase>(() => _i22.GetUserDataUseCase(
        gh<_i17.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i23.TogglePartnerStatusUseCase>(() =>
        _i23.TogglePartnerStatusUseCase(gh<_i17.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i24.WithdrawInfoUseCase>(() => _i24.WithdrawInfoUseCase(
        gh<_i17.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i25.LogOutUseCase>(() => _i25.LogOutUseCase(
        gh<_i17.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i26.UpdateFcmTokenUseCase>(() =>
        _i26.UpdateFcmTokenUseCase(gh<_i17.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i27.UpdateUserInfoUseCase>(() =>
        _i27.UpdateUserInfoUseCase(gh<_i17.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i28.DeleteAccountUseCase>(() => _i28.DeleteAccountUseCase(
        gh<_i17.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i29.PayInfoUseCase>(() => _i29.PayInfoUseCase(
        gh<_i17.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i30.UpdateLanguageUseCase>(() =>
        _i30.UpdateLanguageUseCase(gh<_i17.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i31.IDriverOrderRepository>(
      () => _i32.DriverOrderRepository(
          gh<_i14.IDriverOrder>(instanceName: 'DriverOrderRemoteImpl')),
      instanceName: 'DriverOrderRepository',
    );
    gh.lazySingleton<_i33.IAuthRepository>(
      () => _i34.AuthRepositoryImpl(
          gh<_i10.IAuthService>(instanceName: 'AuthServiceImpl')),
      instanceName: 'AuthRepositoryImpl',
    );
    gh.lazySingleton<_i35.GetOrderStatusUseCase>(() =>
        _i35.GetOrderStatusUseCase(gh<_i31.IDriverOrderRepository>(
            instanceName: 'DriverOrderRepository')));
    gh.lazySingleton<_i36.VerifyUseCase>(() => _i36.VerifyUseCase(
        gh<_i33.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i37.RefreshTokenUseCase>(() => _i37.RefreshTokenUseCase(
        gh<_i33.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i38.ResendCodeUseCase>(() => _i38.ResendCodeUseCase(
        gh<_i33.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i39.LoginUseCase>(() => _i39.LoginUseCase(
        gh<_i33.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    return this;
  }
}
