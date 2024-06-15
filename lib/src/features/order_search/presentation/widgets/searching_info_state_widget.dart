import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class SearchingInfoStateWidget extends StatelessWidget {
  const SearchingInfoStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.icons.brand.success.svg(
          width: 64,
          height: 64,
          colorFilter: ColorFilter.mode(
            context.theme.secondary,
            BlendMode.srcIn,
          ),
        ),
        const Gap(UIConstants.defaultGap3),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.current.searching,
              style: context.theme.textStyles.bodyMain.copyWith(
                color: context.theme.secondary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
