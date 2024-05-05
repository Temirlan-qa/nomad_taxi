import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class TextFieldHelper {
  Color getThinBorderColor(
      BuildContext context, TextFieldFocusState focusState, TextFieldValidationState validationState) {
    if (focusState == TextFieldFocusState.focused) {
      if (validationState == TextFieldValidationState.success) {
        return context.theme.green;
      } else if (validationState == TextFieldValidationState.error) {
        return context.theme.red;
      } else {
        return context.theme.blue;
      }
    } else {
      if (validationState == TextFieldValidationState.success) {
        return context.theme.green;
      } else if (validationState == TextFieldValidationState.error) {
        return context.theme.red;
      } else {
        return context.theme.secondary;
      }
    }
  }

  Color getBoldBorderColor(
      BuildContext context, TextFieldFocusState focusState, TextFieldValidationState validationState) {
    if (focusState == TextFieldFocusState.focused) {
      if (validationState == TextFieldValidationState.success) {
        return context.theme.lightGreen;
      } else if (validationState == TextFieldValidationState.error) {
        return context.theme.lightRed;
      } else {
        return context.theme.lightBlue;
      }
    }
    return context.theme.transparent;
  }
}
