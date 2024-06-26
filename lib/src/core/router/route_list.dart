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
          builder: (context, state) {
            final map = state.extra as Map<String, String>;
            return ConfirmCodePage(
              phone: map["phone"]!,
              userId: map["userId"]!,
              countryCode: map["countryCode"]!,
            );
          }),
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
          builder: (context, state) {
            final map = state.extra as ActivatePromocodeViewModel;
            return PromoCodeAddedPage(
              activatePromocodeViewModel: map,
            );
          }),
      GoRoute(
        name: RouteNames.help,
        path: RoutePaths.help,
        builder: (_, __) => const HelpPage(),
      ),
      GoRoute(
        name: RouteNames.profile,
        path: RoutePaths.profile,
        builder: (_, __) => const ProfilePage(),
      ),
      GoRoute(
        name: RouteNames.driverOrders,
        path: RoutePaths.driverOrders,
        builder: (context, stat) => const DriverOrdersPage(),
      ),
      GoRoute(
        name: RouteNames.order,
        path: RoutePaths.order,
        builder: (context, state) {
          final OrderEntity order = state.extra as OrderEntity;
          return OrderPage(order: order);
        },
      ),
      GoRoute(
        name: RouteNames.orderFinished,
        path: RoutePaths.orderFinished,
        builder: (_, __) => const OrderFinishedPage(),
      ),
      GoRoute(
        name: RouteNames.driverModeIntro,
        path: RoutePaths.driverModeIntro,
        builder: (_, __) => const DriverIntroPage(),
      ),
      GoRoute(
        name: RouteNames.enterDriverInfo,
        path: RoutePaths.enterDriverInfo,
        builder: (_, __) => const EnterDriverInfoPage(),
      ),
      GoRoute(
        name: RouteNames.driverMode,
        path: RoutePaths.driverMode,
        builder: (_, __) => const DriverMainPage(),
      ),
      GoRoute(
        name: RouteNames.transferMoney,
        path: RoutePaths.transferMoney,
        builder: (_, __) => const TransferMoneyPage(),
      ),
      GoRoute(
        name: RouteNames.transferMoneyInstruction,
        path: RoutePaths.transferMoneyInstruction,
        builder: (_, state) {
          final withdrawInfo = state.extra as WebViewController;
          return TransferMoneyInstructionPage(
            withdrawInfoController: withdrawInfo,
          );
        },
      ),
      GoRoute(
        name: RouteNames.chooseTariff,
        path: RoutePaths.chooseTariff,
        builder: (_, state) {
          final int balance = state.extra as int;
          return ChooseTariffPage(
            balance: balance,
          );
        },
      ),
      GoRoute(
          name: RouteNames.searchAddress,
          path: RoutePaths.searchAddress,
          builder: (_, state) {
            final map = state.extra as Map<String, dynamic>;
            return SearchAddressPage(
              latLng: map["latLng"]!,
              whereFrom: map["whereFrom"]!,
            );
          }),
      GoRoute(
        name: RouteNames.orderSearch,
        path: RoutePaths.orderSearch,
        builder: (_, state) {
          final map = state.extra as Map<String, dynamic>;
          return OrderSearchPage(
            id: map["id"]!,
            whereFrom: map["whereFrom"]!,
            whereTo: map["whereTo"]!,
            price: map["price"]!,
          );
        },
      ),
      GoRoute(
        name: RouteNames.orderPrice,
        path: RoutePaths.orderPrice,
        builder: (_, state) {
          final map = state.extra as Map<String, dynamic>;
          return OrderPricePage(
            whereFrom: map["whereFrom"]!,
            whereTo: map["whereTo"]!,
          );
        },
      )
    ];
