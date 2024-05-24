part of 'application.dart';

Widget _buildApp({
  required AppFlavor flavor,
  required GoRouter router,
  required String languageCode,
}) {
  switch (flavor) {
    case AppFlavor.development:
      return _devApp(router, languageCode);
    case AppFlavor.production:
      return _prodApp(router, languageCode);
  }
}

MaterialApp _devApp(GoRouter router, String languageCode) => _buildMaterialApp(
      router: router,
      title: AppFlavor.development.toString(),
      languageCode: languageCode,
    );

MaterialApp _prodApp(GoRouter router, String languageCode) => _buildMaterialApp(
      router: router,
      title: AppFlavor.production.toString(),
      languageCode: languageCode,
    );

MaterialApp _buildMaterialApp({
  required GoRouter router,
  required String title,
  required String languageCode,
}) {
  return MaterialApp.router(
    title: title,
    localizationsDelegates: const <LocalizationsDelegate<Object>>[
      S.delegate,
      // RefreshLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    locale: Locale(languageCode),
    supportedLocales: S.delegate.supportedLocales,
    routerDelegate: router.routerDelegate,
    routeInformationParser: router.routeInformationParser,
    routeInformationProvider: router.routeInformationProvider,
    theme: MaterialAppTheme.theme,
    darkTheme: MaterialAppTheme.dark,
    themeMode: ThemeMode.system,
    debugShowCheckedModeBanner: false,
  );
}

enum AppFlavor {
  development('development'),
  production('production');

  final String envPath;
  const AppFlavor(this.envPath);
}
