import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/api/client/rest/dio/dio_client.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';

// import 'package:nomad_taxi/src/core/utils/helpers/ui_helpers.dart';

import 'application.dart';

class Runner {
  Future<void> initializeAndRun({
    required AppFlavor flavor,
    required List<String> args,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();
    await DioRestClient().init();
    // UIHelpers.statusBarTheme();
    MainApp(flavor: flavor).run();
  }
}
