import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

import 'text_field_border_widget.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      required this.controller,
      required this.hintText,
      this.keyboardType,
      this.inputFormatters,
      this.textFieldValidationState = TextFieldValidationState.none,
      this.onChanged,
      this.isReadOnly});
  final TextEditingController controller;
  final String hintText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextFieldValidationState textFieldValidationState;
  final ValueChanged? onChanged;
  final bool? isReadOnly;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final FocusNode focusNode = FocusNode();

  TextFieldFocusState textFieldFocusState = TextFieldFocusState.unfocused;
  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

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
                  : textFieldFocusState = TextFieldFocusState.unfocused;
            });
          },
          child: TextFormField(
            inputFormatters: widget.inputFormatters,
            focusNode: focusNode,
            controller: widget.controller,
            cursorColor: context.theme.primary,
            style: headLine.copyWith(color: context.theme.primary),
            keyboardType: widget.keyboardType,
            onChanged: widget.onChanged,
            readOnly: widget.isReadOnly ?? false,
            onTapOutside: (event) {
              setState(() {
                focusNode.unfocus();
                textFieldFocusState = TextFieldFocusState.unfocused;
              });
            },
            onEditingComplete: () {
              setState(() {
                focusNode.unfocus();
                textFieldFocusState = TextFieldFocusState.unfocused;
              });
            },
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
        TextFieldBorderWidget(
          textFieldFocusState: textFieldFocusState,
          textFieldValidationState: widget.textFieldValidationState,
        ),
        const Gap(UIConstants.defaultGap2),
        widget.textFieldValidationState == TextFieldValidationState.none
            ? const Offstage()
            : Center(
                child: Text(
                  //TODO: temp
                  '$textFieldFocusState',
                  style: context.theme.textStyles.bodyMain.copyWith(
                    color: widget.textFieldValidationState ==
                            TextFieldValidationState.error
                        ? context.theme.red
                        : context.theme.green,
                  ),
                ),
              ),
      ],
    );
  }
}
