// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../features/profile/data/datasources/remote/i_profile_remote.dart'
    as _i5;
import '../../../features/profile/data/datasources/remote/radionets_remote_impl.dart'
    as _i6;
import '../../../features/profile/data/repositories/profile_repository_impl.dart'
    as _i8;
import '../../../features/profile/domain/repositories/i_profile_remote.dart'
    as _i7;
import '../../../features/profile/domain/usecases/delete_account_use_case.dart'
    as _i12;
import '../../../features/profile/domain/usecases/log_out_use_case.dart'
    as _i10;
import '../../../features/profile/domain/usecases/update_user_info_use_case.dart'
    as _i11;
import '../../api/client/rest/dio_client.dart' as _i4;
import '../../utils/helpers/connectivity_helper.dart' as _i3;
import '../../utils/helpers/isolate_manager.dart' as _i9;

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
    gh.singleton<_i3.ConnectivityHelper>(_i3.ConnectivityHelper());
    await gh.singletonAsync<_i4.DioRestClient>(
      () {
        final i = _i4.DioRestClient();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i5.IProfileRemote>(
      () => _i6.ProfileRemoteImpl(gh<_i4.DioRestClient>()),
      instanceName: 'ProfileRemoteImpl',
    );
    gh.lazySingleton<_i7.IProfileRepository>(
      () => _i8.ProfileRepositoryImpl(
          gh<_i5.IProfileRemote>(instanceName: 'ProfileRemoteImpl')),
      instanceName: 'ProfileRepositoryImpl',
    );
    gh.singleton<_i9.IsolateManager>(_i9.IsolateManager());
    gh.lazySingleton<_i10.LogOutUseCase>(() => _i10.LogOutUseCase(
        gh<_i7.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i11.UpdateUserInfoUseCase>(() =>
        _i11.UpdateUserInfoUseCase(
            gh<_i7.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    gh.lazySingleton<_i12.DeleteAccountUseCase>(() => _i12.DeleteAccountUseCase(
        gh<_i7.IProfileRepository>(instanceName: 'ProfileRepositoryImpl')));
    return this;
  }
}
