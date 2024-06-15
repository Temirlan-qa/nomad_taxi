import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({
    super.key,
    required this.child,
    this.bottomPadding = UIConstants.defaultPadding2,
  });
  final Widget child;
  final double bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(UIConstants.defaultGap2),
      margin: EdgeInsets.only(bottom: bottomPadding),
      decoration: BoxDecoration(
        boxShadow: [StaticShadows.main],
        color: context.theme.white,
        borderRadius: BorderRadius.circular(UIConstants.defaultGap3),
      ),
      child: child,
    );
  }
}
