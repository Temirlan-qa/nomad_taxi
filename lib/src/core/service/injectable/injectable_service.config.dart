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
import '../../api/client/rest/dio_client.dart' as _i4;
import '../../utils/helpers/connectivity_helper.dart' as _i3;
import '../../utils/helpers/isolate_manager.dart' as _i7;

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
    gh.singleton<_i7.IsolateManager>(_i7.IsolateManager());
    return this;
  }
}
