import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/custom_container_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_drawer_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_open_drawer_bottom_widget.dart';

class DriverModePage extends StatefulWidget {
  const DriverModePage({super.key});

  @override
  State<DriverModePage> createState() => _DriverModePageState();
}

class _DriverModePageState extends State<DriverModePage> {
  bool switchState = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final bodyMain = context.theme.textStyles.bodyMain;
    final secondary = context.theme.secondary;

    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomDrawerWidget(),
      appBar: CustomAppBar(
          appBarText: S.current.driver_mode,
          isDrawer: true,
          leading: CustomOpenDrawerButtonWidget(scaffoldKey: _scaffoldKey)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          physics: const BouncingScrollPhysics(),
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomContainerWidget(
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.current.your_account,
                          style: bodyMain.copyWith(color: secondary),
                        ),
                        const Gap(UIConstants.defaultGap7),
                        Text(
                          '500 ₸',
                          style: context.theme.textStyles.titleMain,
                        ),
                        const Gap(UIConstants.defaultGap2),
                        Text(
                          S.current.recharge_account,
                          style: bodyMain.copyWith(color: context.theme.red),
                        ),
                      ],
                    )),
                const Gap(UIConstants.defaultGap1),
                Expanded(
                  child: CustomContainerWidget(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.your_bonuses,
                        style: bodyMain.copyWith(color: secondary),
                      ),
                      const Gap(UIConstants.defaultGap7),
                      Text(
                        '500 ₸',
                        style: context.theme.textStyles.titleMain,
                      ),
                    ],
                  )),
                ),
              ],
            ),
            const Gap(UIConstants.defaultGap3),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
              child: CustomContainerWidget(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.current.your_tariff,
                    style: bodyMain.copyWith(color: secondary),
                  ),
                  const Gap(UIConstants.defaultGap7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S.current.free,
                        style: context.theme.textStyles.titleSecondary,
                      ),
                      Assets.icons.regular.chevronRightSolid.svg(
                          width: 18,
                          height: 18,
                          colorFilter:
                              ColorFilter.mode(secondary, BlendMode.srcIn))
                    ],
                  ),
                  const Gap(UIConstants.defaultGap7),
                  Text(
                    S.current.select_tariff,
                    style: bodyMain.copyWith(color: secondary),
                  ),
                ],
              )),
            ),
            const Gap(UIConstants.defaultGap1),
            CustomContainerWidget(
                onTap: () {
                  setState(() {
                    switchState = !switchState;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(S.current.on_line,
                            style: context.theme.textStyles.headLine),
                        const Gap(UIConstants.defaultGap5),
                        Text(
                          S.current.active,
                          style: bodyMain.copyWith(color: context.theme.green),
                        ),
                      ],
                    ),
                    Switch(
                        focusColor: secondary,
                        hoverColor: secondary,
                        activeTrackColor: secondary,
                        activeColor: context.theme.primary,
                        inactiveThumbColor: secondary,
                        inactiveTrackColor: context.theme.stroke,
                        value: switchState,
                        onChanged: (val) {
                          setState(() {
                            switchState = val;
                          });
                        })
                  ],
                )),
            const Gap(UIConstants.defaultGap3),
            CustomContainerWidget(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.current.orders,
                          style: context.theme.textStyles.titleSecondary
                              .copyWith(color: secondary),
                        ),
                        const Gap(UIConstants.defaultGap7),
                        Text(
                          S.current.go_offline,
                          style: bodyMain.copyWith(color: secondary),
                        ),
                      ],
                    ),
                    Assets.icons.regular.chevronRightSolid.svg(
                        width: 18,
                        height: 18,
                        colorFilter:
                            ColorFilter.mode(secondary, BlendMode.srcIn))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
