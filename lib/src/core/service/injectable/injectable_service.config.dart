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
    as _i15;
import '../../../features/auth/domain/repositories/auth_repository_impl.dart'
    as _i16;
import '../../../features/auth/domain/usecases/login_use_case.dart' as _i17;
import '../../../features/auth/presentation/bloc/auth_bloc.dart' as _i18;
import '../../../features/profile/data/datasources/remote/i_profile_remote.dart'
    as _i6;
import '../../../features/profile/data/datasources/remote/radionets_remote_impl.dart'
    as _i7;
import '../../../features/profile/data/repositories/profile_repository_impl.dart'
    as _i11;
import '../../../features/profile/domain/repositories/i_profile_remote.dart'
    as _i10;
import '../../../features/profile/domain/usecases/delete_account_use_case.dart'
    as _i14;
import '../../../features/profile/domain/usecases/log_out_use_case.dart'
    as _i12;
import '../../../features/profile/domain/usecases/update_user_info_use_case.dart'
    as _i13;
import '../../api/client/rest/dio/dio_client.dart' as _i5;
import '../../utils/helpers/connectivity_helper.dart' as _i3;
import '../../utils/helpers/isolate_manager.dart' as _i4;
import '../auth/auth_service_impl.dart' as _i9;
import '../auth/i_auth_service.dart' as _i8;

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
      () => _i7.ProfileRemoteImpl(gh<_i5.DioRestClient>()),
      instanceName: 'ProfileRemoteImpl',
    );
    gh.lazySingleton<_i8.IAuthService>(
      () => _i9.AuthServiceImpl(gh<_i5.DioRestClient>()),
      instanceName: 'AuthServiceImpl',
    );
    gh.lazySingleton<_i10.IProfileRepository>(
      () => _i11.ProfileRepositoryImpl(
          gh<_i6.IProfileRemote>(instanceName: 'ProfileRemoteImpl')),
      instanceName: 'ProfileRepositoryImpl',
    );
    gh.lazySingleton<_i12.LogOutUseCase>(() => _i12.LogOutUseCase(
        gh<_i10.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i13.UpdateUserInfoUseCase>(() =>
        _i13.UpdateUserInfoUseCase(gh<_i10.IProfileRepository>(
            instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i14.DeleteAccountUseCase>(() => _i14.DeleteAccountUseCase(
        gh<_i10.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i15.IAuthRepository>(
      () => _i16.AuthRepositoryImpl(
          gh<_i8.IAuthService>(instanceName: 'AuthServiceImpl')),
      instanceName: 'AuthRepositoryImpl',
    );
    gh.lazySingleton<_i17.LoginUseCase>(() => _i17.LoginUseCase(
        gh<_i15.IAuthRepository>(instanceName: 'AuthRepositoryImpl')));
    gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(gh<_i17.LoginUseCase>()));
    return this;
  }
}
