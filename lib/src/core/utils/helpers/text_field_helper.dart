import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class TextFieldHelper {
  Color getThinBorderColor(
      BuildContext context, TextFieldFocusState focusState, TextFieldValidationState validationState) {
    if (validationState == TextFieldValidationState.success) {
      return context.theme.green;
    } else if (validationState == TextFieldValidationState.error) {
      return context.theme.red;
    }
    if (focusState == TextFieldFocusState.focused) {
      return context.theme.blue;
    }
    return context.theme.secondary;
  }

  Color getBoldBorderColor(
      BuildContext context, TextFieldFocusState focusState, TextFieldValidationState validationState) {
    if (focusState == TextFieldFocusState.unfocused) {
      return context.theme.transparent;
    }
    if (validationState == TextFieldValidationState.error) {
      return context.theme.lightRed;
    }
    if (validationState == TextFieldValidationState.success) {
      return context.theme.lightGreen;
    }
    return context.theme.lightBlue;
  }
}
