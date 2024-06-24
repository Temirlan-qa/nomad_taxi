import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/api/client/rest/dio/dio_client.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/storage/storage_service_impl.dart';
import 'package:nomad_taxi/src/core/utils/loggers/logger.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/data/client/order_web_socket_client.dart';

// import 'package:nomad_taxi/src/core/utils/helpers/ui_helpers.dart';

import 'application.dart';

class Runner {
  Future<void> initializeAndRun({
    required AppFlavor flavor,
    required List<String> args,
  }) async {
    await configureDependencies();
    // UIHelpers.statusBarTheme();
    FlutterError.onError = Log.logFlutterError;
    //BindingBase.debugZoneErrorsAreFatal = true;
    WidgetsFlutterBinding.ensureInitialized();
    await StorageServiceImpl().init();
    await DioRestClient().init();
    final orderWebSocketClient = getIt<OrderWebSocketClient>();

    await orderWebSocketClient.setBaseUrl(
      host: 'auyltaxi.kz',
      apiKey: 'ILX4RM4prL',
    );

    MainApp(flavor: flavor).run();
  }
}
