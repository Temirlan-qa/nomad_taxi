import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/error/router_error_page.dart';
import 'package:nomad_taxi/src/features/auth/presentation/pages/auth_page.dart';
import 'package:nomad_taxi/src/features/auth/presentation/pages/confirm_code_page.dart';
import 'package:nomad_taxi/src/features/auth/presentation/pages/policy_page.dart';
import 'package:nomad_taxi/src/features/help/presentation/pages/help_page.dart';
import 'package:nomad_taxi/src/features/main/presentation/pages/main_page.dart';
import 'package:nomad_taxi/src/features/profile/presentation/pages/profile_page.dart';
import 'package:nomad_taxi/src/features/promo_code/presentation/pages/promo_code_added_page.dart';
import 'package:nomad_taxi/src/features/promo_code/presentation/pages/promo_code_page.dart';
import 'package:nomad_taxi/src/features/settings/presentation/pages/settings_page.dart';

import '../../features/main/presentation/pages/about_app_page.dart';

part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

GoRouter routerProvider() {
  return GoRouter(
    initialLocation: RoutePaths.main,
    debugLogDiagnostics: true,
    routes: _routes(),
    // redirect: (context, state) {
    //   return RoutePaths.main;
    // },
  );
}
