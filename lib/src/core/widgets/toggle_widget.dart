import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';

class ToggleWidget extends StatelessWidget {
  const ToggleWidget({super.key, required this.value, required this.onPressed});

  final bool value;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: value
            ? Assets.icons.checkOut.on.svg()
            : Assets.icons.checkOut.off.svg());
  }
}
