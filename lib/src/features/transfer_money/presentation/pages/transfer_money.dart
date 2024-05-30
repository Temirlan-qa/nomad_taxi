import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/custom_text_icon_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/features/transfer_money%20copy/presentation/pages/transfer_money.dart';

class TransferMoneyPage extends StatelessWidget {
  const TransferMoneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bodyMain = context.theme.textStyles.bodyMain;
    final secondary = context.theme.secondary;
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButtonWrapper(onPressed: () => context.pop()),
        actions: [
          CustomTextIconButtonWidget(
              icon: Assets.icons.solid.circleUpSolid,
              color: context.theme.red,
              title: S.current.withdraw_money),
          const Gap(14),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              S.current.recharge_kaspi,
              style: context.theme.textStyles.titleMain,
            ),
            const Divider(height: 48),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.your_ID,
                        style: bodyMain.copyWith(color: secondary),
                      ),
                      const Gap(UIConstants.defaultGap5),
                      Text('178', style: context.theme.textStyles.extraTitle)
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.your_balance,
                        style: bodyMain.copyWith(color: secondary),
                      ),
                      const Gap(UIConstants.defaultGap5),
                      Text('1 200 ₸', style: context.theme.textStyles.headLine)
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 48),
            Text(
              S.current.instruction,
              style: context.theme.textStyles.headLine,
            ),
            const Gap(UIConstants.defaultPadding),
            Text(
              '1 ${S.current.step}',
              style: bodyMain.copyWith(color: secondary),
            ),
            const Gap(UIConstants.defaultGap2),
            Text(S.current.open_kaspi_app, style: bodyMain),
            const Gap(UIConstants.defaultPadding),
            Text(
              '2 ${S.current.step}',
              style: bodyMain.copyWith(color: secondary),
            ),
            const Gap(UIConstants.defaultGap2),
            Text(S.current.enter_ID, style: bodyMain),
            const Gap(UIConstants.defaultGap2),
            const CustomCopyButtonWidget(
              code: '3781',
            ),
            const Gap(UIConstants.defaultPadding),
            Text(
              '3 ${S.current.step}',
              style: bodyMain.copyWith(color: secondary),
            ),
            const Gap(UIConstants.defaultGap2),
            Text(S.current.enter_amount, style: bodyMain),
            CustomMainButtonWidget(
              title: S.current.send_receipt,
              isMain: false,
              prefixIcon: Assets.icons.solid.commentSolid,
              iconColor: context.theme.green,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
