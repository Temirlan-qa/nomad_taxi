import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

import '../../../../core/constants/ui_constants.dart';
import '../../../../core/localization/generated/l10n.dart';

class ErrorInfoStateWidget extends StatelessWidget {
  const ErrorInfoStateWidget({super.key, this.errorMessage});

  final String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          errorMessage ?? '',
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
                style: context.theme.textStyles.bodyMain.copyWith(
                  color: context.theme.secondary,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
