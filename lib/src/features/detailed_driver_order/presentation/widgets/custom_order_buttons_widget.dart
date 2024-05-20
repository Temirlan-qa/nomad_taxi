import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';

class CustomOrderButtonsWidget extends StatelessWidget {
  const CustomOrderButtonsWidget({
    super.key,
    required this.lableStyle,
    required this.headLine,
  });

  final TextStyle lableStyle;
  final TextStyle headLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(S.current.can_cancel_via, style: lableStyle),
        const Gap(UIConstants.defaultGap5),
        Text('5:00 ${S.current.minutes}}',
            style: headLine.copyWith(color: context.theme.red)),
        const Gap(UIConstants.defaultGap2),
        CustomMainButtonWidget(
          title: S.current.arrived_call_point,
          onPressed: () {
            context.push(RoutePaths.orderFinished);
          },
        ),
        const Gap(UIConstants.defaultGap1),
        CustomMainButtonWidget(
          title: S.current.cancel_the_order,
          onPressed: () {},
          isMain: false,
          color: context.theme.red,
        ),
      ],
    );
  }
}
