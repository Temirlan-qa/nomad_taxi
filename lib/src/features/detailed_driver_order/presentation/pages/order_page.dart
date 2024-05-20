import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/widgets/custom_order_buttons_widget.dart';
import 'package:nomad_taxi/src/features/detailed_driver_order/presentation/widgets/order_addresses_card.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final labelStyle = context.theme.textStyles.bodyMain
        .copyWith(color: context.theme.secondary);
    final titleStyle = context.theme.textStyles.titleSecondary;
    final headLine = context.theme.textStyles.headLine;
    return Scaffold(
      bottomNavigationBar: CustomMainBottomWidgets(
        child: MediaQuery.orientationOf(context).index == 0
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OrderAddressesCard(
                      labelStyle: labelStyle, titleStyle: titleStyle),
                  const Gap(UIConstants.defaultGap3),
                  CustomOrderButtonsWidget(
                      lableStyle: labelStyle, headLine: headLine),
                ],
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  OrderAddressesCard(
                      labelStyle: labelStyle, titleStyle: titleStyle),
                  const Gap(UIConstants.defaultGap3),
                  Expanded(
                    child: CustomOrderButtonsWidget(
                        lableStyle: labelStyle, headLine: headLine),
                  ),
                ],
              ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(UIConstants.defaultGap1),
          children: [
            Text(S.current.details,
                style: headLine.copyWith(color: context.theme.secondary)),
            const Gap(UIConstants.defaultGap5),
            Row(
              children: [
                Assets.icons.solid.taxi.svg(
                    height: 24,
                    width: 24,
                    colorFilter:
                        ColorFilter.mode(context.theme.red, BlendMode.srcIn)),
                const Gap(UIConstants.defaultGap1),
                Text(S.current.taxi,
                    style: context.theme.textStyles.extraTitle
                        .copyWith(color: context.theme.red)),
              ],
            ),
            const Gap(UIConstants.defaultGap7),
            Row(
              children: [
                Text(S.current.order_status, style: labelStyle),
                const Gap(UIConstants.defaultGap2),
                Text(S.current.in_progress,
                    style: labelStyle.copyWith(color: context.theme.blue)),
              ],
            ),
            const Divider(height: UIConstants.defaultGap3),
            Text(S.current.by_cash, style: labelStyle),
            const Gap(UIConstants.defaultGap5),
            Text('300 ₸', style: titleStyle),
            const Gap(UIConstants.defaultGap2),
            Text(S.current.to_your_account, style: labelStyle),
            const Gap(UIConstants.defaultGap5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: context.theme.red,
                      borderRadius:
                          BorderRadius.circular(UIConstants.defaultRadius)),
                  child: Center(
                    child: Text('500 ₸',
                        style: context.theme.textStyles.titleSecondary
                            .copyWith(color: context.theme.white)),
                  ),
                ),
                Text(S.current.more_detailed,
                    style: headLine.copyWith(color: context.theme.red)),
              ],
            ),
            const Gap(UIConstants.defaultGap1),
            Text(S.current.client, style: labelStyle),
            const Gap(UIConstants.defaultGap5),
            Text('Елисеева Екатерина ', style: titleStyle),
            const Gap(UIConstants.defaultGap7),
            Row(
              children: [
                Expanded(
                  child: CustomMainButtonWidget(
                    title: S.current.route,
                    onPressed: () {
                      context.push(RoutePaths.orderFinished);
                    },
                    isMain: false,
                    prefixIcon: Assets.icons.solid.routeSolid1,
                    iconColor: context.theme.red,
                    color: context.theme.red,
                  ),
                ),
                const Gap(UIConstants.defaultGap1),
                Expanded(
                  child: CustomMainButtonWidget(
                    title: S.current.call,
                    onPressed: () {
                      context.push(RoutePaths.orderFinished);
                    },
                    isMain: false,
                    prefixIcon: Assets.icons.solid.phoneSolid,
                    iconColor: context.theme.green,
                    color: context.theme.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
