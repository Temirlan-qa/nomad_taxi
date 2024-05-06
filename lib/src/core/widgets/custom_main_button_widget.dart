import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

part 'main_button_widgets.dart';

class CustomMainButtonWidget extends StatelessWidget {
  const CustomMainButtonWidget(
      {super.key,
      required this.title,
      this.onPressed,
      this.prefixIcon,
      this.suffixIcon,
      this.isMain = true,
      this.color});

  final VoidCallback? onPressed;
  final String title;
  final SvgGenImage? prefixIcon;
  final SvgGenImage? suffixIcon;
  final bool isMain;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FilledButton(
        style: isMain
            ? null
            : FilledButton.styleFrom(
                foregroundColor: color ?? context.theme.primary, backgroundColor: context.theme.background),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MainButtonIconWidget(
              icon: prefixIcon,
              color: color,
            ),
            const Gap(UIConstants.defaultGap2),
            MainButtonTextWidget(title: title),
            const Gap(UIConstants.defaultGap2),
            MainButtonIconWidget(icon: suffixIcon, color: color)
          ],
        ),
      ),
    );
  }
}
