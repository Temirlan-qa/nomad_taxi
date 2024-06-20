import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class AcceptedInfoStateWidget extends StatelessWidget {
  const AcceptedInfoStateWidget({this.waitingTime, super.key});

  final int? waitingTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.icons.brand.success.svg(
          width: 64,
          height: 64,
          colorFilter: ColorFilter.mode(context.theme.red, BlendMode.srcIn),
        ),
        const Gap(UIConstants.defaultGap3),
        Text(
          S.current.order_accepted,
          textAlign: TextAlign.center,
          style: context.theme.textStyles.titleMain,
        ),
        const Gap(UIConstants.defaultGap3),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.current.approximate_time_arrival,
              textAlign: TextAlign.center,
              style: context.theme.textStyles.bodyMain
                  .copyWith(color: context.theme.secondary),
            ),
          ],
        ),
        const Gap(UIConstants.defaultGap1),
        Text(
          '${waitingTime ?? 3} ${S.current.minutes}',
          textAlign: TextAlign.center,
          style: context.theme.textStyles.titleSecondary
              .copyWith(color: context.theme.secondary),
        ),
      ],
    );
  }
}
