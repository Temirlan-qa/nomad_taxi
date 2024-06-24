import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/base/base_bloc/bloc/base_bloc_widget.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/service/injectable/injectable_service.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/custom_container_widget.dart';
import 'package:nomad_taxi/src/core/widgets/drawer/drawer_tile.dart';
import 'package:nomad_taxi/src/core/widgets/drawer/profile_card.dart';
import 'package:nomad_taxi/src/features/main/presentation/bloc/main_bloc.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_drawer_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget(
      {super.key, required this.onSwitchMode, required this.isDriverMode});

  final VoidCallback? onSwitchMode;
  final bool isDriverMode;
  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final mainBloc = getIt<MainBloc>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.orientationOf(context).index == 1
          ? MediaQuery.sizeOf(context).width * 0.5
          : null,
      backgroundColor: context.theme.white,
      surfaceTintColor: context.theme.white,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: MediaQuery.orientationOf(context).index == 0 ? 10 : 7,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const Gap(UIConstants.defaultGap2),
                  const ProfileCard(),
                  const Gap(UIConstants.defaultGap2),
                  //
                  widget.isDriverMode
                      ? BaseBlocWidget<ProfileBloc, ProfileEvent, ProfileState>(
                          bloc: getIt<ProfileBloc>(),
                          builder: (context, state, bloc) {
                            return state.when(
                                initial: () => const Offstage(),
                                loaded: (viewModel) => Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          UIConstants.defaultPadding,
                                          0,
                                          UIConstants.defaultPadding,
                                          UIConstants.defaultGap3),
                                      child: CustomContainerWidget(
                                          onTap: () {
                                            context.pushNamed(
                                                RouteNames.transferMoney);
                                          },
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                S.current.your_account,
                                                style: context
                                                    .theme.textStyles.bodyMain
                                                    .copyWith(
                                                        color: context
                                                            .theme.secondary),
                                              ),
                                              const Gap(
                                                  UIConstants.defaultGap7),
                                              Text(
                                                '${viewModel.pBalance ?? 0}',
                                                style: context
                                                    .theme.textStyles.titleMain,
                                              ),
                                              const Gap(
                                                  UIConstants.defaultGap2),
                                              Text(
                                                S.current.recharge_account,
                                                style: context
                                                    .theme.textStyles.headLine
                                                    .copyWith(
                                                        color:
                                                            context.theme.red),
                                              ),
                                            ],
                                          )),
                                    ));
                          },
                        )
                      : const Offstage(),
                  DrawerTile(
                    title: S.current.main,
                    onTap: () {
                      context.pop();
                    },
                    isSelected: true,
                  ),
                  DrawerTile(
                    title: S.current.help,
                    onTap: () {
                      context.pushNamed(RouteNames.help);
                    },
                    isSelected: false,
                  ),
                  DrawerTile(
                    title: S.current.settings,
                    onTap: () {
                      context.pushNamed(RouteNames.settings);
                    },
                    isSelected: false,
                  ),
                  // DrawerTile(
                  //   title: S.current.referral_program,
                  //   onTap: () {},
                  //   isSelected: false,
                  // ),
                  DrawerTile(
                    title: S.current.activate_promoCode,
                    onTap: () {
                      context.pushNamed(RouteNames.promoCode);
                    },
                    isSelected: false,
                  ),
                  DrawerTile(
                    title: S.current.buy_franchise,
                    onTap: () {
                      mainBloc.state.whenOrNull(
                        loaded: (viewModel) {
                          final String url = viewModel.franchiseLink;
                          return launchWhatsApp(url);
                        },
                      );
                    },
                    isSelected: false,
                  ),
                  DrawerTile(
                    showUnderline: false,
                    title: S.current.about_app,
                    onTap: () {
                      context.pushNamed(RouteNames.aboutApp);
                    },
                    isSelected: false,
                  ),
                  //
                  const Gap(UIConstants.defaultGap3),
                  MediaQuery.orientationOf(context).index == 0
                      ? const Offstage()
                      : DrawerBottomWidgets(
                          onSwitchMode: widget.onSwitchMode,
                          isDriverMode: widget.isDriverMode,
                        ),
                ],
              ),
            ),
            Expanded(
              flex: MediaQuery.orientationOf(context).index == 1 ? 0 : 3,
              child: MediaQuery.orientationOf(context).index == 1
                  ? const Offstage()
                  : DrawerBottomWidgets(
                      onSwitchMode: widget.onSwitchMode,
                      isDriverMode: widget.isDriverMode,
                    ),
            )
          ],
        ),
      ),
    );
  }

  launchWhatsApp(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("WhatsApp not installed")),
      );
    }
  }
}
