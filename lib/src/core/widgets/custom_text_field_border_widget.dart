import 'package:flutter/material.dart';

import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/utils/helpers/text_field_helper.dart';

class CustomTextFieldBorderWidget extends StatelessWidget {
  const CustomTextFieldBorderWidget({
    super.key,
    required this.textFieldFocusState,
    required this.textFieldValidationState,
  });

  final TextFieldFocusState textFieldFocusState;
  final TextFieldValidationState textFieldValidationState;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: Durations.short3,
          height: 1,
          color: TextFieldHelper().getThinBorderColor(context, textFieldFocusState, textFieldValidationState),
        ),
        AnimatedContainer(
          duration: Durations.short3,
          height: 4,
          color: TextFieldHelper().getBoldBorderColor(context, textFieldFocusState, textFieldValidationState),
        )
      ],
    );
  }
}
