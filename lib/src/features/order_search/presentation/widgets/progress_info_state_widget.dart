import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class ProgressInfoStateWidget extends StatelessWidget {
  const ProgressInfoStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.current.successful_ride,
          textAlign: TextAlign.center,
          style: context.theme.textStyles.titleMain,
        ),
        const Gap(UIConstants.defaultGap2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                S.current.close_window_and_come_back,
                textAlign: TextAlign.center,
                style: context.theme.textStyles.bodyMain
                    .copyWith(color: context.theme.secondary),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
