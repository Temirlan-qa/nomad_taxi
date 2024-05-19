part of 'theme.dart';

class TextStyles {
  static const extraTitle = TextStyle(
      fontSize: 28,
      color: _primary,
      fontWeight: FontWeight.w700,
      height: 30 / 28);
  static const titleMain = TextStyle(
      fontSize: 24,
      color: _primary,
      fontWeight: FontWeight.w600,
      height: 26 / 24,
      letterSpacing: -0.2);
  static const titleSecondary = TextStyle(
      fontSize: 20,
      color: _primary,
      fontWeight: FontWeight.w600,
      height: 22 / 20);
  static const titleTag = TextStyle(
      fontSize: 14,
      color: _primary,
      fontWeight: FontWeight.w600,
      height: 16 / 14);
  static const headLine = TextStyle(
      fontSize: 16,
      color: _primary,
      fontWeight: FontWeight.w600,
      height: 18 / 16,
      letterSpacing: -0.2);
  static const bodyMain = TextStyle(
      fontSize: 14,
      color: _primary,
      fontWeight: FontWeight.w500,
      height: 18 / 14);
  static const bodySecondary = TextStyle(
      fontSize: 12,
      color: _primary,
      fontWeight: FontWeight.w500,
      height: 16 / 12);
}

class AppTextStyles {
  TextStyle get extraTitle => TextStyles.extraTitle;
  TextStyle get titleMain => TextStyles.titleMain;
  TextStyle get titleSecondary => TextStyles.titleSecondary;
  TextStyle get titleTag => TextStyles.titleTag;
  TextStyle get headLine => TextStyles.headLine;
  TextStyle get bodyMain => TextStyles.bodyMain;
  TextStyle get bodySecondary => TextStyles.bodySecondary;
}

extension TextStyleThemeDataExtension on ThemeData {
  AppTextStyles get textStyles => AppTextStyles();
}
