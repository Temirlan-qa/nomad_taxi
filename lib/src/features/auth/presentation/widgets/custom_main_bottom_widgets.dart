import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomMainBottomWidgets extends StatelessWidget {
  const CustomMainBottomWidgets({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: context.theme.white,
        child: Padding(
            padding: const EdgeInsets.all(UIConstants.defaultPadding),
            child: child),
      ),
    );
  }
}
