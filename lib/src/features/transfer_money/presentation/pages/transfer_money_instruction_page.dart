import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/features/transfer_money/presentation/widgets/custom_copy_button_widget.dart';

class TransferMoneyInstructionPage extends StatelessWidget {
  const TransferMoneyInstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bodyMain = context.theme.textStyles.bodyMain;
    final secondary = context.theme.secondary;
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButtonWrapper(onPressed: () => context.pop()),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              S.current.instruction_to_withdraw,
              style: context.theme.textStyles.titleMain,
            ),
            const Divider(height: 48),
            Text(
              S.current.withdraw_infinite,
              style: context.theme.textStyles.headLine,
            ),
            const Gap(UIConstants.defaultPadding),
            Text(
              '1 ${S.current.step}',
              style: bodyMain.copyWith(color: secondary),
            ),
            const Gap(UIConstants.defaultGap2),
            Text(S.current.copy_your_id, style: bodyMain),
            const Gap(UIConstants.defaultGap2),
            const CustomCopyButtonWidget(
              code: '3781',
            ),
            const Gap(UIConstants.defaultPadding),
            Text(
              '2 ${S.current.step}',
              style: bodyMain.copyWith(color: secondary),
            ),
            const Gap(UIConstants.defaultGap2),
            Text(S.current.write_to_whatsapp_about_withdraw, style: bodyMain),
            const Gap(UIConstants.defaultGap2),
            CustomMainButtonWidget(
              title: S.current.withdraw_money,
              isMain: false,
              prefixIcon: Assets.icons.solid.circleUpSolid,
              iconColor: context.theme.green,
              onPressed: () {
                context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
