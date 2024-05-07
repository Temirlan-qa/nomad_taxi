import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomModalDragWidget extends StatelessWidget {
  const CustomModalDragWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 44,
          height: 8,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: context.theme.stroke)),
    );
  }
}
