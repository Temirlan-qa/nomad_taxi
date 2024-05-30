import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({super.key, required this.child, this.onTap});
  final Widget child;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.background,
      borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
        child: AnimatedContainer(
            duration: Durations.medium1,
            padding: const EdgeInsets.all(UIConstants.defaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
                border: Border.all(color: context.theme.stroke)),
            child: child),
      ),
    );
  }
}
