import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_drawer_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_drawer_profile_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_drawer_tile_widget.dart';

class CustomDrawerWidget extends StatefulWidget {
  const CustomDrawerWidget({super.key});

  @override
  State<CustomDrawerWidget> createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
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
                  const CustomDrawerProfileWidget(),
                  const Gap(UIConstants.defaultGap2),
                  CustomDrawerTileWidget(
                    title: S.current.main,
                    onTap: () {
                      context.pop();
                    },
                    isSelected: true,
                  ),
                  CustomDrawerTileWidget(
                    title: S.current.help,
                    onTap: () {
                      context.pushNamed(RouteNames.help);
                    },
                    isSelected: false,
                  ),
                  CustomDrawerTileWidget(
                    title: S.current.settings,
                    onTap: () {
                      context.pushNamed(RouteNames.settings);
                    },
                    isSelected: false,
                  ),
                  CustomDrawerTileWidget(
                    title: S.current.referral_program,
                    onTap: () {},
                    isSelected: false,
                  ),
                  CustomDrawerTileWidget(
                    title: S.current.activate_promoCode,
                    onTap: () {
                      context.pushNamed(RouteNames.promoCode);
                    },
                    isSelected: false,
                  ),
                  CustomDrawerTileWidget(
                    title: S.current.buy_franchise,
                    onTap: () {},
                    isSelected: false,
                  ),
                  CustomDrawerTileWidget(
                    showUnderline: false,
                    title: S.current.about_app,
                    onTap: () {
                      context.pushNamed(RouteNames.aboutApp);
                    },
                    isSelected: false,
                  ),
                  const Gap(UIConstants.defaultGap3),
                  MediaQuery.orientationOf(context).index == 0
                      ? const Offstage()
                      : const DrawerBottomWidgets(),
                ],
              ),
            ),
            Expanded(
              flex: MediaQuery.orientationOf(context).index == 1 ? 0 : 3,
              child: MediaQuery.orientationOf(context).index == 1
                  ? const Offstage()
                  : const DrawerBottomWidgets(),
            )
          ],
        ),
      ),
    );
  }
}
