import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/service/storage_service.dart';

// import 'package:nomad_taxi/src/core/utils/helpers/ui_helpers.dart';

import 'application.dart';

StorageService st = StorageServiceImpl();

class Runner {
  Future<void> initializeAndRun({
    required AppFlavor flavor,
    required List<String> args,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();
    // UIHelpers.statusBarTheme();
    await st.init();
    await st.openBox();
    st.getLanguageCode() ?? st.setLanguageCode('ru');

    MainApp(flavor: flavor).run();
  }
}
