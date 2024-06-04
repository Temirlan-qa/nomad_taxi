import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomTextIconButtonWidget extends StatelessWidget {
  const CustomTextIconButtonWidget(
      {super.key,
      required this.icon,
      required this.title,
      this.onPressed,
      this.color = StaticColors.primary});
  final VoidCallback? onPressed;
  final SvgGenImage icon;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            foregroundColor: color,
            textStyle: context.theme.textStyles.headLine.copyWith(),
            padding: const EdgeInsets.fromLTRB(10, 14, 10, 14),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(UIConstants.defaultRadius)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        icon: icon.svg(
            width: 18,
            height: 18,
            colorFilter: ColorFilter.mode(color!, BlendMode.srcIn)),
        label: Text(title));
  }
}
