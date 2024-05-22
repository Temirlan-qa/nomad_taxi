import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

part 'text_button_widgets.dart';

class CustomMainButtonWidget extends StatelessWidget {
  const CustomMainButtonWidget({
    super.key,
    required this.title,
    this.onPressed,
    this.prefixIcon,
    this.suffixIcon,
    this.isMain = true,
    this.color,
    this.iconColor,
  });

  final VoidCallback? onPressed;
  final String title;
  final SvgGenImage? prefixIcon;
  final SvgGenImage? suffixIcon;
  final bool isMain;
  final Color? color;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: isMain
          ? null
          : FilledButton.styleFrom(
              foregroundColor: color ?? context.theme.primary,
              backgroundColor: context.theme.background),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixIcon != null
              ? prefixIcon!.svg(color: iconColor)
              : const Offstage(),
          const Gap(UIConstants.defaultGap2),
          TextButtonWidget(
            title: title,
            color:
                isMain ? context.theme.white : color ?? context.theme.primary,
          ),
          const Gap(UIConstants.defaultGap2),
          prefixIcon != null
              ? prefixIcon!.svg(color: iconColor)
              : const Offstage(),
        ],
      ),
    );
  }
}
