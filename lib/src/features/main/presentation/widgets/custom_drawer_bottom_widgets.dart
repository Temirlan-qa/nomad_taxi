import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/driver_button_widget.dart';

class DrawerBottomWidgets extends StatelessWidget {
  const DrawerBottomWidgets({
    super.key,
    required this.onSwitchMode,
    required this.isDriverMode,
  });
  final VoidCallback? onSwitchMode;
  final bool isDriverMode;

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
            DriverButtonWidget(
              onPressed: onSwitchMode,
              isDriverMode: isDriverMode,
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
                        style: context.theme.textStyles.titleMain.copyWith(
                            color: context.theme.kzColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                            height: 0.6),
                      ),
                      const Gap(UIConstants.defaultGap5),
                      Text(
                        S.current.made_kazakhstan,
                        style: context.theme.textStyles.bodySecondary
                            .copyWith(color: context.theme.kzColor),
                      ),
                    ],
                  ),
                  const Gap(UIConstants.defaultPadding),
                  Text(
                    '${S.current.version} 1.0',
                    style: context.theme.textStyles.bodySecondary
                        .copyWith(color: context.theme.secondary),
                  ),
                  const Gap(UIConstants.defaultGap1),
                  Text(
                    '${S.current.development_by}\nТОО NOMADGO ©2024',
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
