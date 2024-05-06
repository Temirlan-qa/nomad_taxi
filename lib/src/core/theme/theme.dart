import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';

part 'colors.dart';
part 'text_styles.dart';
part 'theme_context_extension.dart';

class MaterialAppTheme {
  static final theme = ThemeData(
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.resolveWith((_) => _black),
      fillColor: MaterialStateProperty.resolveWith((_) => _transparent),
      side: AlwaysActiveBorderSide(),
    ),
    brightness: Brightness.light,
    fontFamily: 'Inter',
    scaffoldBackgroundColor: _white,
    splashFactory: InkSparkle.splashFactory,
    bottomSheetTheme: const BottomSheetThemeData(
        modalBackgroundColor: _white,
        backgroundColor: _white,
        surfaceTintColor: _white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(UIConstants.defaultGap3)))),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
          elevation: 0,
          fixedSize: const Size.fromHeight(44),
          maximumSize: const Size.fromHeight(44),
          backgroundColor: _red,
          foregroundColor: _white,
          disabledBackgroundColor: _background,
          disabledForegroundColor: _secondary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(UIConstants.defaultRadius))),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _white,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      errorStyle: const TextStyle(height: 0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: _primary),
        borderRadius: BorderRadius.circular(10),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: _red),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: _red),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );

  static final light = theme.copyWith(
    brightness: Brightness.light,
  );

  static final dark = theme.copyWith(
    brightness: Brightness.dark,
  );
}

class AlwaysActiveBorderSide extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(_) => const BorderSide(color: _black);
}
