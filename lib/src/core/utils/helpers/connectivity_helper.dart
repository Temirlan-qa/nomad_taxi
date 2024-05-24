import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

@singleton
class ConnectivityHelper {
  ConnectivityHelper() {
    instance = InternetConnectionChecker.createInstance(
      checkTimeout: const Duration(seconds: 5),
    );
  }
  late final InternetConnectionChecker instance;

  final Connectivity _connectivity = Connectivity();

  Future<bool> checkConnection({
    required String ipAddress,
    required int port,
    Duration timeout = const Duration(seconds: 5),
  }) async {
    try {
      final AddressCheckResult checkResult = await instance.isHostReachable(
        AddressCheckOptions(
          hostname: ipAddress,
          port: port,
          timeout: timeout,
        ),
      );
      return checkResult.isSuccess;
    } catch (e) {
      return false;
    }
  }

  Future<bool> checkInternetConnection() async {
    final List<ConnectivityResult> result =
        await _connectivity.checkConnectivity();

    if (result.contains(ConnectivityResult.mobile)) {
      return true;
    }
    if (result.contains(ConnectivityResult.wifi)) {
      return true;
    }

    return false;
  }
}
