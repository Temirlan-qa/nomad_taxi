// part of 'router_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

const double _fadeTransitionBegin = 0.0;
const double _fadeTransitionEnd = 1.0;

List<RouteBase> controlRoutes = <RouteBase>[
  GoRoute(
    name: AppRoutes.main.name,
    path: AppRoutes.main.path,
    builder: (_, __) => const SizedBox(),
  ),
];
