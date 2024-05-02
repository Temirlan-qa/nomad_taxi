import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../core/router/router.dart';

part 'flavor_builds.dart';

class MainApp extends StatelessWidget {
  const MainApp({required this.flavor, super.key});
  final AppFlavor flavor;

  void run() => runApp(
        DefaultAssetBundle(
          bundle: SentryAssetBundle(),
          child: this,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final GoRouter router = routerProvider();

    return MultiBlocProvider(
      providers: const [],
      child: _buildApp(
        flavor: flavor,
        router: router,
      ),
    );
  }
}
