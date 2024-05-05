import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';

import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_pin_code_text_widget.dart';

class CustomPinCodeFieldWidget extends StatefulWidget {
  const CustomPinCodeFieldWidget({super.key, required this.codeController});
  final TextEditingController codeController;

  @override
  State<CustomPinCodeFieldWidget> createState() => _CustomPinCodeFieldWidgetState();
}

class _CustomPinCodeFieldWidgetState extends State<CustomPinCodeFieldWidget> {
  final FocusNode focusNode = FocusNode();
  TextFieldValidationState textFieldValidationState = TextFieldValidationState.none;

  isFocused(int elementId) {
    if (elementId == 1 && focusNode.hasFocus && (getLength() == 0)) {
      return TextFieldFocusState.focused;
    } else if (elementId == 2 && focusNode.hasFocus && (getLength() == 1)) {
      return TextFieldFocusState.focused;
    } else if (elementId == 3 && focusNode.hasFocus && (getLength() == 2)) {
      return TextFieldFocusState.focused;
    } else if (elementId == 4 && focusNode.hasFocus && (getLength() == 3 || getLength() == 4)) {
      return TextFieldFocusState.focused;
    }
    return TextFieldFocusState.unfocused;
  }

  int getLength() {
    return widget.codeController.text.isEmpty ? 0 : widget.codeController.text.length;
  }

  getChar(int index) {
    return widget.codeController.text.characters.elementAtOrNull(index);
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (value) => setState(() {}),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Align(
            alignment: Alignment.center,
            child: Opacity(
              opacity: 0,
              child: SizedBox(
                height: 56,
                width: 200,
                child: TextFormField(
                  focusNode: focusNode,
                  selectionControls: EmptyTextSelectionControls(),
                  controller: widget.codeController,
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  style: context.theme.textStyles.extraTitle,
                  onTapOutside: (_) => focusNode.unfocus(),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                  onChanged: (value) {
                    setState(() {});
                    if (value.length == 4) {
                      focusNode.unfocus();
                    }
                  },
                ),
              ),
            ),
          ),
          IgnorePointer(
            ignoring: true,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomPinCodeTextWidget(
                  textFieldFocusState: isFocused(1),
                  textFieldValidationState: textFieldValidationState,
                  title: getChar(0),
                ),
                const Gap(UIConstants.defaultGap4),
                CustomPinCodeTextWidget(
                  textFieldFocusState: isFocused(2),
                  textFieldValidationState: textFieldValidationState,
                  title: getChar(1),
                ),
                const Gap(UIConstants.defaultGap4),
                CustomPinCodeTextWidget(
                  textFieldFocusState: isFocused(3),
                  textFieldValidationState: textFieldValidationState,
                  title: getChar(2),
                ),
                const Gap(UIConstants.defaultGap4),
                CustomPinCodeTextWidget(
                  textFieldFocusState: isFocused(4),
                  textFieldValidationState: textFieldValidationState,
                  title: getChar(3),
                ),
              ],
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: -15,
              child: textFieldValidationState == TextFieldValidationState.none
                  ? const Offstage()
                  : Center(
                      child: Text(
                        focusNode.hasFocus.toString(),
                        style: context.theme.textStyles.body
                            .copyWith(color: focusNode.hasFocus ? context.theme.blue : context.theme.red),
                      ),
                    ))
        ],
      ),
    );
  }
}
