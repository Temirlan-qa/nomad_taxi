import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/custom_text_field_border_widget.dart';

class CustomMainTextFieldWidget extends StatefulWidget {
  const CustomMainTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
  });
  final TextEditingController controller;
  final String hintText;

  @override
  State<CustomMainTextFieldWidget> createState() =>
      _CustomMainTextFieldWidgetState();
}

class _CustomMainTextFieldWidgetState extends State<CustomMainTextFieldWidget> {
  final FocusNode focusNode = FocusNode();

  TextFieldFocusState textFieldFocusState = TextFieldFocusState.unfocused;
  TextFieldValidationState textFieldValidationState =
      TextFieldValidationState.none;
  @override
  Widget build(BuildContext context) {
    final headLine = context.theme.textStyles.headLine;
    return Column(
      children: [
        Focus(
          onFocusChange: (value) {
            setState(() {
              value
                  ? textFieldFocusState = TextFieldFocusState.focused
                  : TextFieldFocusState.unfocused;
            });
          },
          child: TextFormField(
            focusNode: focusNode,
            controller: widget.controller,
            cursorColor: context.theme.primary,
            style: headLine.copyWith(color: context.theme.primary),
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: headLine.copyWith(color: context.theme.secondary),
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
        CustomTextFieldBorderWidget(
            textFieldFocusState: textFieldFocusState,
            textFieldValidationState: textFieldValidationState),
        const Gap(UIConstants.defaultGap2),
        textFieldValidationState == TextFieldValidationState.none
            ? const Offstage()
            : Center(
                child: Text(
                  //TODO: temp
                  '$textFieldFocusState',
                  style: context.theme.textStyles.body.copyWith(
                      color: focusNode.hasFocus
                          ? context.theme.blue
                          : context.theme.red),
                ),
              )
      ],
    );
  }
}
