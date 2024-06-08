// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../features/auth/data/repositories/i_auth_repository.dart'
    as _i27;
import '../../../features/auth/domain/repositories/auth_repository_impl.dart'
    as _i28;
import '../../../features/auth/domain/usecases/login_use_case.dart' as _i30;
import '../../../features/auth/domain/usecases/refresh_token_use_case.dart'
    as _i31;
import '../../../features/auth/domain/usecases/resend_code_use_case.dart'
    as _i32;
import '../../../features/auth/domain/usecases/verify_user_case.dart' as _i29;
import '../../../features/orders/data/datasources/remote/i_orders_remote.dart'
    as _i8;
import '../../../features/orders/data/datasources/remote/orders_remote_impl.dart'
    as _i9;
import '../../../features/orders/data/repositories/orders_repository_impl.dart'
    as _i14;
import '../../../features/orders/domain/repositories/i_orders_repository.dart'
    as _i13;
import '../../../features/profile/data/datasources/remote/i_profile_remote.dart'
    as _i6;
import '../../../features/profile/data/datasources/remote/profile_remote_impl.dart'
    as _i7;
import '../../../features/profile/data/repositories/profile_repository_impl.dart'
    as _i16;
import '../../../features/profile/domain/repositories/i_profile_repository.dart'
    as _i15;
import '../../../features/profile/domain/usecases/delete_account_use_case.dart'
    as _i21;
import '../../../features/profile/domain/usecases/get_user_data_use_case.dart'
    as _i17;
import '../../../features/profile/domain/usecases/log_out_use_case.dart'
    as _i18;
import '../../../features/profile/domain/usecases/pay_info_use_case.dart'
    as _i26;
import '../../../features/profile/domain/usecases/toggle_partner_status_use_case.dart'
    as _i24;
import '../../../features/profile/domain/usecases/update_fcm_token_use_case.dart'
    as _i19;
import '../../../features/profile/domain/usecases/update_language_use_case.dart'
    as _i22;
import '../../../features/profile/domain/usecases/update_partner_data_use_case.dart'
    as _i23;
import '../../../features/profile/domain/usecases/update_user_info_use_case.dart'
    as _i20;
import '../../../features/profile/domain/usecases/withdraw_info_use_case.dart'
    as _i25;
import '../../api/client/rest/dio/dio_client.dart' as _i5;
import '../../utils/helpers/connectivity_helper.dart' as _i3;
import '../../utils/helpers/isolate_manager.dart' as _i4;
import '../auth/auth_service_impl.dart' as _i12;
import '../auth/i_auth_service.dart' as _i11;

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
      () => _i9.OrdersRemoteImpl(gh<_i10.Dio>()),
      instanceName: 'OrdersRemoteImpl',
    );
    gh.lazySingleton<_i11.IAuthService>(
      () => _i12.AuthServiceImpl(gh<_i5.DioRestClient>()),
      instanceName: 'AuthServiceImpl',
    );
    gh.lazySingleton<_i13.IOrdersRepository>(
      () => _i14.OrdersRepositoryImpl(
          gh<_i8.IOrdersRemote>(instanceName: 'OrdersRemoteImpl')),
      instanceName: 'OrdersRepositoryImpl',
    );
    gh.lazySingleton<_i15.IProfileRepository>(
      () => _i16.ProfileRepositoryImpl(
          gh<_i6.IProfileRemote>(instanceName: 'ProfileRemoteImpl')),
      instanceName: 'ProfileRepositoryImpl',
    );
    gh.lazySingleton<_i17.GetUserDataUseCase>(() => _i17.GetUserDataUseCase(
        gh<_i15.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i18.LogOutUseCase>(() => _i18.LogOutUseCase(
        gh<_i15.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i19.UpdateFcmTokenUseCase>(() =>
        _i19.UpdateFcmTokenUseCase(gh<_i15.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i20.UpdateUserInfoUseCase>(() =>
        _i20.UpdateUserInfoUseCase(gh<_i15.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i21.DeleteAccountUseCase>(() => _i21.DeleteAccountUseCase(
        gh<_i15.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i22.UpdateLanguageUseCase>(() =>
        _i22.UpdateLanguageUseCase(gh<_i15.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i23.UpdatePartnerDataUseCase>(() =>
        _i23.UpdatePartnerDataUseCase(gh<_i15.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i24.TogglePartnerStatusUseCase>(() =>
        _i24.TogglePartnerStatusUseCase(gh<_i15.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i25.WithdrawInfoUseCase>(() => _i25.WithdrawInfoUseCase(
        gh<_i15.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i26.PayInfoUseCase>(() => _i26.PayInfoUseCase(
        gh<_i15.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i27.IAuthRepository>(
      () => _i28.AuthRepositoryImpl(
          gh<_i11.IAuthService>(instanceName: 'AuthServiceImpl')),
      instanceName: 'AuthRepositoryImpl',
    );
    gh.lazySingleton<_i29.VerifyUseCase>(() => _i29.VerifyUseCase(
        gh<_i27.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i30.LoginUseCase>(() => _i30.LoginUseCase(
        gh<_i27.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i31.RefreshTokenUseCase>(() => _i31.RefreshTokenUseCase(
        gh<_i27.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.lazySingleton<_i32.ResendCodeUseCase>(() => _i32.ResendCodeUseCase(
        gh<_i27.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    return this;
  }
}
