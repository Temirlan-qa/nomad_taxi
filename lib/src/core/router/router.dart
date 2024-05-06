import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/error/router_error_page.dart';
import 'package:nomad_taxi/src/features/auth/presentation/pages/auth_page.dart';
import 'package:nomad_taxi/src/features/auth/presentation/pages/confirm_code_page.dart';
import 'package:nomad_taxi/src/features/auth/presentation/pages/policy_page.dart';
import 'package:nomad_taxi/src/features/main/presentation/pages/main_page.dart';

import '../../features/main/presentation/pages/about_app.dart';

part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

GoRouter routerProvider() {
  return GoRouter(
    initialLocation: RoutePaths.auth,
    debugLogDiagnostics: true,
    routes: _routes(),
    // redirect: (context, state) {
    //   return RoutePaths.main;
    // },
  );
}
