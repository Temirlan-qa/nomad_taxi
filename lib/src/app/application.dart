import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/features/settings/presentation/bloc/settings/settings_bloc.dart';
// import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../core/router/router.dart';

part 'flavor_builds.dart';

class MainApp extends StatelessWidget {
  const MainApp({required this.flavor, super.key});
  final AppFlavor flavor;

  void run() => runApp(
        DefaultAssetBundle(
          bundle: SentryAssetBundle(),
          child: this,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final GoRouter router = routerProvider();
    return BaseBlocWidget<SettingsBloc, SettingsEvent, SettingsState>(
      bloc: getIt<SettingsBloc>()..add(const SettingsEvent.retrieve()),
      starterEvent: const SettingsEvent.retrieve(),
      builder: (context, state, bloc) {
        return state.when(
          empty: () => const SizedBox(),
          inProgress: () => const SizedBox(),
          error: (message) => const SizedBox(),
          done: (languageCode) {
            return _buildApp(
              flavor: flavor,
              router: router,
              languageCode: languageCode,
            );
          },
        );
      },
    );

    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider(
    //       create: (_) => context.read<SettingsBloc>()
    //         ..add(
    //           const SettingsEvent.retrieve(),
    //         ),
    //     ),
    //   ],
    //   child: BlocProvider(
    //     create: (context) => context.read<SettingsBloc>()
    //       ..add(
    //         const SettingsEvent.retrieve(),
    //       ),
    //     child: BlocBuilder<SettingsBloc, SettingsState>(
    //       bloc: context.read<SettingsBloc>(),
    //       builder: (context, state) {
    //         return _buildApp(
    //           flavor: flavor,
    //           router: router,
    //           languageCode:
    //               state.mapOrNull(done: (state) => state.languageCode) ?? 'ru',
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
