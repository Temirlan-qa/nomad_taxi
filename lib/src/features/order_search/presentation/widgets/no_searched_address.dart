import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class NoSearchedAddress extends StatelessWidget {
  const NoSearchedAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(UIConstants.defaultPadding2),
        Assets.icons.brand.clock2.svg(
          width: 64,
          height: 64,
          colorFilter: ColorFilter.mode(
            context.theme.background,
            BlendMode.srcIn,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(72, 12, 72, 12),
          child: Text(
            S.current.recent_trips_will_displayed_here,
            textAlign: TextAlign.center,
            style: context.theme.textStyles.bodyMain
                .copyWith(color: context.theme.secondary),
          ),
        ),
      ],
    );
  }
}
