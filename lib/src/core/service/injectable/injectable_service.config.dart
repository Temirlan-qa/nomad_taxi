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
    as _i51;
import '../../../features/auth/domain/repositories/auth_repository_impl.dart'
    as _i52;
import '../../../features/auth/domain/usecases/login_use_case.dart' as _i57;
import '../../../features/auth/domain/usecases/refresh_token_use_case.dart'
    as _i55;
import '../../../features/auth/domain/usecases/resend_code_use_case.dart'
    as _i56;
import '../../../features/auth/domain/usecases/verify_user_case.dart' as _i54;
import '../../../features/detailed_driver_order/data/client/order_web_socket_client.dart'
    as _i25;
import '../../../features/detailed_driver_order/data/datasources/remote/driver_order_remote_impl.dart'
    as _i24;
import '../../../features/detailed_driver_order/data/datasources/remote/i_driver_order.dart'
    as _i23;
import '../../../features/detailed_driver_order/data/repositories/driver_order_repository.dart'
    as _i50;
import '../../../features/detailed_driver_order/domain/repositories/i_driver_order_repository.dart'
    as _i49;
import '../../../features/detailed_driver_order/domain/usecases/accept_order_use_case.dart'
    as _i33;
import '../../../features/detailed_driver_order/domain/usecases/cancel_order_use_case.dart'
    as _i29;
import '../../../features/detailed_driver_order/domain/usecases/complete_order_use_case.dart'
    as _i31;
import '../../../features/detailed_driver_order/domain/usecases/get_order_status_use_case.dart'
    as _i53;
import '../../../features/detailed_driver_order/domain/usecases/get_orders_use_case.dart'
    as _i32;
import '../../../features/detailed_driver_order/domain/usecases/start_route_use_case.dart'
    as _i30;
import '../../../features/detailed_driver_order/domain/usecases/waiting_for_client_use_case.dart'
    as _i34;
import '../../../features/help/data/datasources/help_remote_impl.dart' as _i7;
import '../../../features/help/data/datasources/i_help_remote.dart' as _i6;
import '../../../features/help/data/repositories/profile_repository_impl.dart'
    as _i15;
import '../../../features/help/domain/repositories/i_help_repository.dart'
    as _i14;
import '../../../features/help/domain/usecases/get_questions_use_case.dart'
    as _i26;
import '../../../features/main/domain/usecases/find_town_id_use_case.dart'
    as _i36;
import '../../../features/order_search/data/datasources/remote/i_order_search.dart'
    as _i12;
import '../../../features/order_search/data/datasources/remote/order_search_remote_impl.dart'
    as _i13;
import '../../../features/order_search/data/repositories/search_order_repository_impl.dart'
    as _i17;
import '../../../features/order_search/domain/repositories/i_search_order_repository.dart'
    as _i16;
import '../../../features/order_search/domain/usecases/get_searched_addresses_use_case.dart'
    as _i22;
import '../../../features/orders/data/datasources/remote/i_orders_remote.dart'
    as _i10;
import '../../../features/orders/data/datasources/remote/orders_remote_impl.dart'
    as _i11;
import '../../../features/orders/data/repositories/orders_repository_impl.dart'
    as _i21;
import '../../../features/orders/domain/repositories/i_orders_repository.dart'
    as _i20;
import '../../../features/orders/domain/usecases/create_order_use_case.dart'
    as _i35;
import '../../../features/orders/presentation/bloc/order_bloc.dart' as _i37;
import '../../../features/profile/data/datasources/remote/i_profile_remote.dart'
    as _i8;
import '../../../features/profile/data/datasources/remote/profile_remote_impl.dart'
    as _i9;
import '../../../features/profile/data/repositories/profile_repository_impl.dart'
    as _i28;
import '../../../features/profile/domain/repositories/i_profile_repository.dart'
    as _i27;
import '../../../features/profile/domain/usecases/activate_promocode_use_case.dart'
    as _i44;
import '../../../features/profile/domain/usecases/delete_account_use_case.dart'
    as _i46;
import '../../../features/profile/domain/usecases/get_user_data_use_case.dart'
    as _i39;
import '../../../features/profile/domain/usecases/log_out_use_case.dart'
    as _i42;
import '../../../features/profile/domain/usecases/pay_info_use_case.dart'
    as _i47;
import '../../../features/profile/domain/usecases/toggle_partner_status_use_case.dart'
    as _i40;
import '../../../features/profile/domain/usecases/update_fcm_token_use_case.dart'
    as _i43;
import '../../../features/profile/domain/usecases/update_language_use_case.dart'
    as _i48;
import '../../../features/profile/domain/usecases/update_partner_data_use_case.dart'
    as _i38;
import '../../../features/profile/domain/usecases/update_user_info_use_case.dart'
    as _i45;
import '../../../features/profile/domain/usecases/withdraw_info_use_case.dart'
    as _i41;
import '../../api/client/rest/dio/dio_client.dart' as _i5;
import '../../utils/helpers/connectivity_helper.dart' as _i3;
import '../../utils/helpers/isolate_manager.dart' as _i4;
import '../auth/auth_service_impl.dart' as _i19;
import '../auth/i_auth_service.dart' as _i18;

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
    gh.lazySingleton<_i12.IOrderSearchRemote>(
      () => _i13.OrderSearchRemoteImpl(),
      instanceName: 'OrderSearchRemoteImpl',
    );
    gh.lazySingleton<_i14.IHelpRepository>(
      () => _i15.HelpRepositoryImpl(
          gh<_i6.IHelpRemote>(instanceName: 'HelpRemoteImpl')),
      instanceName: 'HelpRepositoryImpl',
    );
    gh.lazySingleton<_i16.ISearchOrderRepository>(
      () => _i17.SearchOrderRepositoryImpl(
          gh<_i12.IOrderSearchRemote>(instanceName: 'OrderSearchRemoteImpl')),
      instanceName: 'SearchOrderRepositoryImpl',
    );
    gh.lazySingleton<_i18.IAuthService>(
      () => _i19.AuthServiceImpl(gh<_i5.DioRestClient>()),
      instanceName: 'AuthServiceImpl',
    );
    gh.lazySingleton<_i20.IOrdersRepository>(
      () => _i21.OrdersRepositoryImpl(
          gh<_i10.IOrdersRemote>(instanceName: 'OrdersRemoteImpl')),
      instanceName: 'OrdersRepositoryImpl',
    );
    gh.lazySingleton<_i22.GetSearchedAddressesUseCase>(() =>
        _i22.GetSearchedAddressesUseCase(gh<_i16.ISearchOrderRepository>(
            instanceName: 'SearchOrderRepositoryImpl')));
    gh.lazySingleton<_i23.IDriverOrder>(
      () => _i24.DriverOrderRemoteImpl(gh<_i25.OrderWebSocketClient>()),
      instanceName: 'DriverOrderRemoteImpl',
    );
    gh.lazySingleton<_i26.GetQuestionsUseCase>(() => _i26.GetQuestionsUseCase(
        gh<_i14.IHelpRepository>(instanceName: 'HelpRepositoryImpl')));
    gh.lazySingleton<_i27.IProfileRepository>(
      () => _i28.ProfileRepositoryImpl(
          gh<_i8.IProfileRemote>(instanceName: 'ProfileRemoteImpl')),
      instanceName: 'ProfileRepositoryImpl',
    );
    gh.lazySingleton<_i29.CancelOrderUseCase>(() => _i29.CancelOrderUseCase(
        gh<_i20.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i30.StartRouteUseCase>(() => _i30.StartRouteUseCase(
        gh<_i20.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i31.CompleteOrderUseCase>(() => _i31.CompleteOrderUseCase(
        gh<_i20.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i32.GetOrdersUseCase>(() => _i32.GetOrdersUseCase(
        gh<_i20.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i33.AcceptOrderUseCase>(() => _i33.AcceptOrderUseCase(
        gh<_i20.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i34.WaitingForClientUseCase>(() =>
        _i34.WaitingForClientUseCase(
            gh<_i20.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i35.CreateOrderUseCase>(() => _i35.CreateOrderUseCase(
        gh<_i20.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.lazySingleton<_i36.FindTownIdUseCase>(() => _i36.FindTownIdUseCase(
        gh<_i20.IOrdersRepository>(instanceName: 'OrdersRepositoryImpl')));
    gh.factory<_i37.OrderBloc>(
        () => _i37.OrderBloc(gh<_i35.CreateOrderUseCase>()));
    gh.lazySingleton<_i38.UpdatePartnerDataUseCase>(() =>
        _i38.UpdatePartnerDataUseCase(gh<_i27.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i39.GetUserDataUseCase>(() => _i39.GetUserDataUseCase(
        gh<_i27.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i40.TogglePartnerStatusUseCase>(() =>
        _i40.TogglePartnerStatusUseCase(gh<_i27.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i41.WithdrawInfoUseCase>(() => _i41.WithdrawInfoUseCase(
        gh<_i27.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i42.LogOutUseCase>(() => _i42.LogOutUseCase(
        gh<_i27.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i43.UpdateFcmTokenUseCase>(() =>
        _i43.UpdateFcmTokenUseCase(gh<_i27.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i44.ActivatePromocodeUseCase>(() =>
        _i44.ActivatePromocodeUseCase(gh<_i27.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i45.UpdateUserInfoUseCase>(() =>
        _i45.UpdateUserInfoUseCase(gh<_i27.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i46.DeleteAccountUseCase>(() => _i46.DeleteAccountUseCase(
        gh<_i27.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i47.PayInfoUseCase>(() => _i47.PayInfoUseCase(
        gh<_i27.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i48.UpdateLanguageUseCase>(() =>
        _i48.UpdateLanguageUseCase(gh<_i27.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i49.IDriverOrderRepository>(
      () => _i50.DriverOrderRepository(
          gh<_i23.IDriverOrder>(instanceName: 'DriverOrderRemoteImpl')),
      instanceName: 'DriverOrderRepository',
    );
    gh.lazySingleton<_i51.IAuthRepository>(
      () => _i52.AuthRepositoryImpl(
          gh<_i18.IAuthService>(instanceName: 'AuthServiceImpl')),
      instanceName: 'AuthRepositoryImpl',
    );
    gh.lazySingleton<_i53.GetOrderStatusUseCase>(() =>
        _i53.GetOrderStatusUseCase(gh<_i49.IDriverOrderRepository>(
            instanceName: 'DriverOrderRepository')));
    gh.lazySingleton<_i54.VerifyUseCase>(() => _i54.VerifyUseCase(
        gh<_i51.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i55.RefreshTokenUseCase>(() => _i55.RefreshTokenUseCase(
        gh<_i51.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i56.ResendCodeUseCase>(() => _i56.ResendCodeUseCase(
        gh<_i51.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i57.LoginUseCase>(() => _i57.LoginUseCase(
        gh<_i51.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    return this;
  }
}
