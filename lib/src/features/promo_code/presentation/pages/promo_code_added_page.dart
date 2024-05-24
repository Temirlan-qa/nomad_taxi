import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_main_bottom_widgets.dart';
import 'package:nomad_taxi/src/features/promo_code/presentation/widgets/custom_bonus_amount_widget.dart';

class PromoCodeAddedPage extends StatefulWidget {
  const PromoCodeAddedPage({super.key});

  @override
  State<PromoCodeAddedPage> createState() => _PromoCodeAddedPageState();
}

class _PromoCodeAddedPageState extends State<PromoCodeAddedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomBonusAmountWidget(amount: 1000),
                ],
              ),
              const Gap(UIConstants.defaultGap3),
              Text(S.current.congratulate,
                  style: context.theme.textStyles.titleMain),
              const Gap(UIConstants.defaultGap1),
              Text(
                S.current.you_get_bonus(1000),
                style: context.theme.textStyles.bodyMain
                    .copyWith(color: context.theme.secondary),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomMainBottomWidgets(
        child: CustomMainButtonWidget(
          title: S.current.close,
          isMain: false,
          onPressed: () {
            context.pop();
          },
        ),
      ),
    );
  }
}
