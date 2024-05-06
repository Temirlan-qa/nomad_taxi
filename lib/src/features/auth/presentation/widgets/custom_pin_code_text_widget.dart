import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/enums/enums.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/custom_text_field_border_widget.dart';
import 'package:nomad_taxi/src/features/auth/presentation/widgets/custom_cursor_widget.dart';

class CustomPinCodeTextWidget extends StatefulWidget {
  const CustomPinCodeTextWidget({
    super.key,
    required this.title,
    required this.textFieldFocusState,
    required this.textFieldValidationState,
  });
  final String? title;
  final TextFieldFocusState textFieldFocusState;
  final TextFieldValidationState textFieldValidationState;

  @override
  State<CustomPinCodeTextWidget> createState() => _CustomPinCodeTextWidgetState();
}

class _CustomPinCodeTextWidgetState extends State<CustomPinCodeTextWidget> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Durations.short3,
      width: 42.5,
      margin: EdgeInsets.only(top: widget.textFieldFocusState == TextFieldFocusState.focused ? 4 : 0),
      child: Column(
        children: [
          AnimatedCrossFade(
            firstChild: Text(
              widget.title ?? '',
              style: context.theme.textStyles.extraTitle.copyWith(color: context.theme.primary),
            ),
            secondChild: const CustomCursorWidget(),
            crossFadeState: widget.title == null && widget.textFieldFocusState == TextFieldFocusState.focused
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
            duration: Durations.short3,
          ),
          const Gap(UIConstants.defaultGap2),
          CustomTextFieldBorderWidget(
              textFieldFocusState: widget.textFieldFocusState,
              textFieldValidationState: widget.textFieldValidationState),
        ],
      ),
    );
  }
}
