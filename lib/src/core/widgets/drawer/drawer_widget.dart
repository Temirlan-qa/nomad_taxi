import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/drawer/drawer_tile.dart';
import 'package:nomad_taxi/src/core/widgets/drawer/profile_card.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_drawer_bottom_widgets.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget(
      {super.key, required this.onSwitchMode, required this.isDriverMode});

  final VoidCallback? onSwitchMode;
  final bool isDriverMode;
  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
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
                  DrawerTile(
                    title: S.current.referral_program,
                    onTap: () {},
                    isSelected: false,
                  ),
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
                      context.pushNamed(RouteNames.franchise);
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
}
