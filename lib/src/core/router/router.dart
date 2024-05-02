import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/features/example/presentation/pages/example.dart';

part 'route_list.dart';
part 'route_transitions.dart';
part 'router_names.dart';
part 'router_paths.dart';

GoRouter routerProvider() {
  return GoRouter(
    initialLocation: RoutePaths.main,
    debugLogDiagnostics: true,
    routes: _routes(),
    redirect: (context, state) {
      return RoutePaths.main;
    },
  );
}
