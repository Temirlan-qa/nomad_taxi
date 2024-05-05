import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomMainButtonWidget extends StatelessWidget {
  const CustomMainButtonWidget(
      {super.key,
      required this.title,
      this.onPressed,
      this.prefixIcon,
      this.suffixIcon,
      this.isMain = true,
      this.color});

  final Function()? onPressed;
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
            buildButtonIcon(prefixIcon, context),
            buildButtonGap(),
            buildButtonTitle(context),
            buildButtonGap(),
            buildButtonIcon(suffixIcon, context),
          ],
        ),
      ),
    );
  }

  buildButtonTitle(BuildContext context) =>
      Text(title, style: context.theme.textStyles.headLine, maxLines: 1, overflow: TextOverflow.ellipsis);

  Gap buildButtonGap() => const Gap(UIConstants.defaultGap2);

  buildButtonIcon(SvgGenImage? icon, BuildContext context) =>
      icon?.svg(width: 18, height: 18, colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null) ??
      const Offstage();
}
