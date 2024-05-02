import 'dart:async';

import 'package:flutter/foundation.dart';

import 'src/app/application.dart';
import 'src/app/runner.dart';
import 'src/core/utils/loggers/logger.dart';

Future<void> main(List<String> args) async {
  FlutterError.onError = Log.logFlutterError;
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
