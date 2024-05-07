import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';

class CustomMainBottomWidgets extends StatelessWidget {
  const CustomMainBottomWidgets({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          child: child),
    );
  }
}
