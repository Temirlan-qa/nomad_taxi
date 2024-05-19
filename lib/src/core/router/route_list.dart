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
      GoRoute(
        name: RouteNames.error,
        path: RoutePaths.error,
        builder: (_, __) => const RouteErrorPage(),
      ),
      GoRoute(
        name: RouteNames.main,
        path: RoutePaths.main,
        builder: (_, __) => const MainPage(),
      ),
      GoRoute(
        name: RouteNames.aboutApp,
        path: RoutePaths.aboutApp,
        builder: (_, __) => const AboutAppPage(),
      ),
      GoRoute(
        name: RouteNames.settings,
        path: RoutePaths.settings,
        builder: (_, __) => const SettingsPage(),
      ),
      GoRoute(
        name: RouteNames.promoCode,
        path: RoutePaths.promoCode,
        builder: (_, __) => const PromoCodePage(),
      ),
      GoRoute(
        name: RouteNames.promoCodeAdded,
        path: RoutePaths.promoCodeAdded,
        builder: (_, __) => const PromoCodeAddedPage(),
      ),
      GoRoute(
        name: RouteNames.help,
        path: RoutePaths.help,
        builder: (_, __) => const HelpPage(),
      ),
      GoRoute(
        name: RouteNames.myProfile,
        path: RoutePaths.myProfile,
        builder: (_, __) => const MyProfilePage(),
      ),
      GoRoute(
        name: RouteNames.driverOrders,
        path: RoutePaths.driverOrders,
        builder: (_, __) => const DriverOrdersPage(),
      ),
      GoRoute(
        name: RouteNames.order,
        path: RoutePaths.order,
        builder: (_, __) => const OrderPage(),
      ),
      GoRoute(
        name: RouteNames.orderFinished,
        path: RoutePaths.orderFinished,
        builder: (_, __) => const OrderFinishedPage(),
      ),
    ];
