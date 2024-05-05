part of 'router.dart';

const double _fadeTransitionBegin = 0.0;
const double _fadeTransitionEnd = 1.0;

List<RouteBase> _routes() => <RouteBase>[
      GoRoute(
        name: RouteNames.auth,
        path: RoutePaths.auth,
        builder: (_, __) => const AuthPage(),
      ),
      GoRoute(
        name: RouteNames.codeConfirm,
        path: RoutePaths.codeConfirm,
        builder: (_, __) => const ConfirmCodePage(),
      ),
      GoRoute(
        name: RouteNames.policy,
        path: RoutePaths.policy,
        builder: (_, __) => const PolicyPage(),
      ),
    ];
