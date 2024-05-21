// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../features/profile/data/datasources/remote/i_profile_remote.dart'
    as _i6;
import '../../../features/profile/data/datasources/remote/radionets_remote_impl.dart'
    as _i7;
import '../../../features/profile/data/repositories/profile_repository_impl.dart'
    as _i9;
import '../../../features/profile/domain/repositories/i_profile_remote.dart'
    as _i8;
import '../../../features/profile/domain/usecases/delete_account_use_case.dart'
    as _i12;
import '../../../features/profile/domain/usecases/log_out_use_case.dart'
    as _i10;
import '../../../features/profile/domain/usecases/update_user_info_use_case.dart'
    as _i11;
import '../../api/client/rest/dio_client.dart' as _i5;
import '../../utils/helpers/connectivity_helper.dart' as _i3;
import '../../utils/helpers/isolate_manager.dart' as _i4;

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
    gh.lazySingleton<_i8.IProfileRepository>(
      () => _i9.ProfileRepositoryImpl(
          gh<_i6.IProfileRemote>(instanceName: 'ProfileRemoteImpl')),
      instanceName: 'ProfileRepositoryImpl',
    );
    gh.lazySingleton<_i10.LogOutUseCase>(() => _i10.LogOutUseCase(
        gh<_i8.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i11.UpdateUserInfoUseCase>(() =>
        _i11.UpdateUserInfoUseCase(
            gh<_i8.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i12.DeleteAccountUseCase>(() => _i12.DeleteAccountUseCase(
        gh<_i8.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    return this;
  }
}
