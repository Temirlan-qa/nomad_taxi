part of '../../app/application.dart';

GoRouter router(AppType type) {
  return GoRouter(
    redirect: (BuildContext context, GoRouterState goRouterState) {
      if (context.watch<AuthBloc>().state == const AuthState.authenticated()) {
        return AppRoutes.main.path;
        //return AppRoutes.spectrogramWindow.path;
      } else {
        return AppRoutes.onboarding.path;
      }
    },
    errorBuilder: (BuildContext context, GoRouterState state) {
      return RouteErrorPage(
        errorMessage: state.error.toString(),
        key: state.pageKey,
      );
    },
    routes: type == AppType.analytics ? analyticsRoutes : controlRoutes,
  );
}
