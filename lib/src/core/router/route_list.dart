part of 'router.dart';

const double _fadeTransitionBegin = 0.0;
const double _fadeTransitionEnd = 1.0;

List<RouteBase> _routes() => <RouteBase>[
      GoRoute(
        name: RouteNames.main,
        path: RoutePaths.main,
        builder: (_, __) => const ExamplePage(),
      ),
    ];
