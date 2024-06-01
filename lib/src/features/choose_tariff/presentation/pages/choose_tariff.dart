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
import 'package:nomad_taxi/src/features/choose_tariff/presentation/widgets/custom_select_button_widget.dart';

class ChooseTariffPage extends StatelessWidget {
  const ChooseTariffPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bodyMain = context.theme.textStyles.bodyMain;
    final headLine = context.theme.textStyles.headLine;
    final titleSecondary = context.theme.textStyles.titleSecondary;
    return Scaffold(
      appBar: CustomAppBar(
        leading: BackButtonWrapper(onPressed: () => context.pop()),
        actions: [
          CustomTextIconButtonWidget(
              icon: Assets.icons.solid.circleUpSolid,
              title: S.current.withdraw_money,
              color: context.theme.red),
          const Gap(14),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              S.current.tariff_selection,
              style: context.theme.textStyles.titleMain,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(UIConstants.defaultGap3),
                Text(
                  S.current.driver_balance,
                  style: headLine.copyWith(color: context.theme.secondary),
                ),
                const Gap(UIConstants.defaultGap7),
                Text('500 ₸', style: context.theme.textStyles.titleMain)
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  UIConstants.defaultPadding,
                  UIConstants.defaultGap3,
                  UIConstants.defaultPadding,
                  UIConstants.defaultGap2),
              child: Text(
                S.current.basic,
                style: headLine.copyWith(color: context.theme.secondary),
              ),
            ),
            CustomSelectButtonWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Бесплатный', style: titleSecondary),
                  const Gap(UIConstants.defaultGap7),
                  Text(
                      'Принимайте заказы бесплатно, без комиссии и ограничений.',
                      style: bodyMain),
                ],
              ),
            ),
            const Gap(UIConstants.defaultGap7),
            CustomSelectButtonWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Базовый', style: titleSecondary),
                  const Gap(UIConstants.defaultGap7),
                  Text('Коммиссия 4% с каждого заказа', style: bodyMain),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  UIConstants.defaultPadding,
                  UIConstants.defaultGap3,
                  UIConstants.defaultPadding,
                  UIConstants.defaultGap2),
              child: Text(
                S.current.time_packages,
                style: headLine.copyWith(color: context.theme.secondary),
              ),
            ),
            CustomSelectButtonWidget(
              child: Row(
                children: [
                  Text('2 часа', style: titleSecondary),
                  const Gap(UIConstants.defaultGap2),
                  Text('600 ₸',
                      style: headLine.copyWith(color: context.theme.red)),
                ],
              ),
            ),
            const Gap(UIConstants.defaultGap7),
            CustomSelectButtonWidget(
              child: Row(
                children: [
                  Text('4 часа', style: titleSecondary),
                  const Gap(UIConstants.defaultGap2),
                  Text('800 ₸',
                      style: headLine.copyWith(color: context.theme.red)),
                ],
              ),
            ),
            const Gap(UIConstants.defaultGap7),
            CustomSelectButtonWidget(
              child: Row(
                children: [
                  Text('8 часа', style: titleSecondary),
                  const Gap(UIConstants.defaultGap2),
                  Text('1200 ₸',
                      style: headLine.copyWith(color: context.theme.red)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
