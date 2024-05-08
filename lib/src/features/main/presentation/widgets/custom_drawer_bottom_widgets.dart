import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_driver_button_widget.dart';

class CustomDrawerBottomWidgets extends StatelessWidget {
  const CustomDrawerBottomWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: UIConstants.defaultPadding,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomDriverButtonWidget(
              onPressed: () {},
              isDriverMode: false,
            ),
            const Gap(UIConstants.defaultGap3),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: UIConstants.defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'KZ',
                        style: context.theme.textStyles.extraTitle.copyWith(
                            color: context.theme.kzColor,
                            fontWeight: FontWeight.w800),
                      ),
                      const Gap(4),
                      Text(
                        S.current.made_kazakhstan,
                        style: context.theme.textStyles.bodySecondary
                            .copyWith(color: context.theme.kzColor),
                      ),
                    ],
                  ),
                  const Gap(UIConstants.defaultGap1),
                  Text(
                    '${S.current.version} 1.0',
                    style: context.theme.textStyles.bodySecondary
                        .copyWith(color: context.theme.secondary),
                  ),
                  const Gap(UIConstants.defaultGap1),
                  Text(
                    '${S.current.development_by}\nNomad software © 2024',
                    style: context.theme.textStyles.bodySecondary
                        .copyWith(color: context.theme.secondary),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
