import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';

class ToggleWidget extends StatelessWidget {
  const ToggleWidget({
    super.key,
    required this.value,
  });

  final bool value;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        duration: Durations.medium1,
        firstChild: Assets.icons.checkOut.on.svg(),
        secondChild: Assets.icons.checkOut.off.svg(),
        crossFadeState:
            value ? CrossFadeState.showFirst : CrossFadeState.showSecond);
  }
}
