import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'colors.dart';
part 'theme_context_extension.dart';
part 'typography.dart';

//TODO(qazaq ninja): theme туралау для mobile

class FluentAppTheme {
  static final FluentThemeData fluentTheme = FluentThemeData(
    brightness: Brightness.dark,
    typography: _typography,
    scaffoldBackgroundColor: _mainActionPad,
    checkboxTheme: _checkBoxTheme,
    toggleSwitchTheme: _toggleSwitchTheme,
    selectionColor: _mainAccent,
    // buttonTheme: _buttonTheme,
    accentColor: _accentColor,
  );

  static final FluentThemeData fluentLight = fluentTheme.copyWith(
    brightness: Brightness.light,
    typography: _typography,
  );

  static final FluentThemeData fluentDark = fluentTheme.copyWith(
    brightness: Brightness.dark,
    typography: _typography,
  );

  static final ButtonThemeData _buttonTheme = ButtonThemeData(
    defaultButtonStyle: ButtonStyle(
      backgroundColor: ButtonState.resolveWith((Set<ButtonStates> states) {
        if (states.isDisabled) {
          return _mainActionPad;
        }
        if (states.isHovering) {
          return _buttonHover;
        }
        if (states.isPressing) {
          return _buttonActive;
        }
        return _mainAccent;
      }),
      foregroundColor: ButtonState.resolveWith((Set<ButtonStates> states) {
        if (states.isDisabled) {
          return _lightGrey;
        }
        if (states.isHovering) {
          return _black;
        }
        if (states.isPressing) {
          return _black;
        }
        return _white;
      }),
      border: ButtonState.resolveWith((Set<ButtonStates> states) {
        if (states.isDisabled) {
          return BorderSide.none;
        }
        if (states.isHovering) {
          return BorderSide.none;
        }
        if (states.isPressing) {
          return BorderSide.none;
        }
        return BorderSide.none;
      }),
      padding: ButtonState.all(
        const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
      ),
      elevation: ButtonState.resolveWith((Set<ButtonStates> states) {
        if (states.isDisabled) {
          return 0;
        }
        if (states.isHovering) {
          return 0;
        }
        if (states.isPressing) {
          return 0;
        }
        return 0;
      }),
      shadowColor: ButtonState.resolveWith((Set<ButtonStates> states) {
        if (states.isDisabled) {
          return Colors.transparent;
        }
        if (states.isHovering) {
          return Colors.transparent;
        }
        if (states.isPressing) {
          return Colors.transparent;
        }
        return Colors.transparent;
      }),
    ),
    hyperlinkButtonStyle: const ButtonStyle(),
  );
}
