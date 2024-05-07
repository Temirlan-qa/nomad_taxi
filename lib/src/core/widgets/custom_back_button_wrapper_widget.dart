import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/widgets/custom_back_button_widget.dart';

class CustomBackButtonWrapperWidget extends StatelessWidget {
  const CustomBackButtonWrapperWidget({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: CustomBackButtonWidget(onPressed: onPressed),
        ),
      ],
    );
  }
}
