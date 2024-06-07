import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';

class ToggleWidget extends StatelessWidget {
  const ToggleWidget({super.key, required this.value, this.isRed = false});

  final bool value;
  final bool isRed;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        duration: Durations.medium1,
        firstChild: isRed
            ? Assets.icons.checkOut.onRed.svg()
            : Assets.icons.checkOut.on.svg(),
        secondChild: Assets.icons.checkOut.off.svg(),
        crossFadeState:
            value ? CrossFadeState.showFirst : CrossFadeState.showSecond);
  }
}
