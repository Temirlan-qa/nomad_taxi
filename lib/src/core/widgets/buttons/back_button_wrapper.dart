import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class BackButtonWrapper extends StatelessWidget {
  const BackButtonWrapper({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: TextButton.icon(
            onPressed: onPressed,
            style: TextButton.styleFrom(
                foregroundColor: context.theme.primary,
                textStyle: context.theme.textStyles.headLine.copyWith(),
                padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(UIConstants.defaultRadius)),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap),
            icon: Assets.icons.regular.chevronLeftSolid.svg(
              width: 18,
              height: 18,
              colorFilter:
                  ColorFilter.mode(context.theme.primary, BlendMode.srcIn),
            ),
            label: Text(
              S.current.back.toLowerCase(),
            ),
          ),
        ),
      ],
    );
  }
}
