import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/app_bars/custom_app_bar.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/back_button_wrapper.dart';
import 'package:nomad_taxi/src/features/choose_tariff/presentation/widgets/custom_select_button_widget.dart';

class ChooseTariffPage extends StatefulWidget {
  const ChooseTariffPage({required this.balance, super.key});
  final int balance;

  @override
  State<ChooseTariffPage> createState() => _ChooseTariffPageState();
}

class _ChooseTariffPageState extends State<ChooseTariffPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final bodyMain = context.theme.textStyles.bodyMain;
    final headLine = context.theme.textStyles.headLine;
    final titleSecondary = context.theme.textStyles.titleSecondary;

    final List<Map<String, String>> basicTariff = [
      {
        "title": S.current.basic,
      },
      {
        "title": "Бесплатный",
        "description":
            "Принимайте заказы бесплатно, без комиссии и ограничений.",
      },
      {
        "title": "Базовый",
        "description": "Коммиссия 4% с каждого заказа",
      },
      {
        "title": S.current.time_packages,
      },
      {
        "title": "2 часа",
        "description": "600 ₸",
      },
      {
        "title": "4 часа",
        "description": "800 ₸",
      },
      {
        "title": "8 часа",
        "description": "1200 ₸",
      }
    ];

    return Scaffold(
      appBar: CustomAppBar(
          leading: BackButtonWrapper(onPressed: () => context.pop())),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  UIConstants.defaultPadding,
                  UIConstants.defaultGap3,
                  UIConstants.defaultPadding,
                  UIConstants.defaultGap2),
              child: Text(
                S.current.tariff_selection,
                style: context.theme.textStyles.titleMain,
              ),
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
                Text('${widget.balance} ₸',
                    style: context.theme.textStyles.titleMain)
              ],
            ),
            const SizedBox(
              height: UIConstants.defaultPadding,
            ),
            SizedBox(
              height: 600,
              child: ListView.separated(
                itemCount: basicTariff.length,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) {
                  return const Gap(UIConstants.defaultGap7);
                },
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Text(
                      basicTariff[index]['title'] ?? '',
                      style: headLine.copyWith(color: context.theme.secondary),
                    );
                  }
                  if (index == 3) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          basicTariff[index]['title'] ?? '',
                          style:
                              headLine.copyWith(color: context.theme.secondary),
                        ),
                        const SizedBox(height: UIConstants.defaultGap2)
                      ],
                    );
                  }
                  return CustomSelectButtonWidget(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    toggleState: selectedIndex == index,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          basicTariff[index]['title'] ?? '',
                          style: titleSecondary,
                        ),
                        const Gap(UIConstants.defaultGap7),
                        Text(
                          basicTariff[index]['description'] ?? '',
                          style: bodyMain,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
