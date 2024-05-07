import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomDriverButtonWidget extends StatelessWidget {
  const CustomDriverButtonWidget(
      {super.key, this.onPressed, this.isDriverMode = false});

  final VoidCallback? onPressed;
  final bool isDriverMode;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: isDriverMode
          ? FilledButton.styleFrom(
              foregroundColor: context.theme.red,
              backgroundColor: context.theme.background)
          : null,
      onPressed: onPressed,
      child: Row(
        children: [
          Expanded(
            child: Text(
              isDriverMode ? S.current.exit_mode : S.current.driver_mode,
              style: context.theme.textStyles.headLine.copyWith(
                  color:
                      isDriverMode ? context.theme.red : context.theme.white),
            ),
          ),
          Assets.icons.solid.taxiBranding.svg(
              colorFilter: ColorFilter.mode(
                  isDriverMode ? context.theme.red : context.theme.white,
                  BlendMode.srcIn))
        ],
      ),
    );
  }
}
