import 'dart:async';

import 'package:flutter/material.dart';

import 'src/app/application.dart';
import 'src/app/runner.dart';
import 'src/core/service/storage/storage_service_impl.dart';
import 'src/core/utils/loggers/logger.dart';

Future<void> main(List<String> args) async {
  FlutterError.onError = Log.logFlutterError;
  WidgetsFlutterBinding.ensureInitialized();
  await StorageServiceImpl().init();
  // there could be some shared initialization here
  Log.runLogging(() {
    runZonedGuarded(
      () async {
        await Runner().initializeAndRun(
          flavor: AppFlavor.development,
          args: args,
        );
      },
      Log.logZoneError,
    );
  });
}
