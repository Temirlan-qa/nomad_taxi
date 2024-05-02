part of 'application.dart';

Widget _buildApp({
  required AppFlavor flavor,
  required GoRouter router,
}) {
  switch (flavor) {
    case AppFlavor.development:
      return _devApp(router);
    case AppFlavor.production:
      return _prodApp(router);
  }
}

MaterialApp _devApp(GoRouter router) => _buildMaterialApp(
      router: router,
      title: AppFlavor.development.toString(),
    );

MaterialApp _prodApp(GoRouter router) => _buildMaterialApp(
      router: router,
      title: AppFlavor.production.toString(),
    );

MaterialApp _buildMaterialApp({
  required GoRouter router,
  required String title,
}) =>
    MaterialApp.router(
      title: title,
      localizationsDelegates: const [
        S.delegate,
        RefreshLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      theme: MaterialAppTheme.theme,
      darkTheme: MaterialAppTheme.dark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: true,
    );

enum AppFlavor {
  development('development'),
  production('production');

  final String envPath;
  const AppFlavor(this.envPath);
}
