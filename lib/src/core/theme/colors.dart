part of 'theme.dart';

const _primary = Color(0xFF000824);
const _secondary = Color(0xFFBCC1D0);
const _black = Color(0xFF000000);
const _white = Color(0xFFFFFFFF);
const _red = Color(0xFFFF004D);
const _lightRed = Color(0xFFFFC5D3);
const _darkRed = Color(0xFF7B0025);
const _blue = Color(0xFF0094FF);
const _lightBlue = Color(0xFFCAECFF);
const _green = Color(0xFF26CE55);
const _lightGreen = Color(0xFFC3FFC2);
const _background = Color(0xFFF8F9FB);
const _stroke = Color(0xFFEEF0F4);

const _navBar = Color(0xFF505050);
const _scaffoldBackground = Color.fromARGB(255, 233, 233, 233);
const _grey = Color.fromARGB(255, 117, 117, 117);
const _lightGrey = Color.fromARGB(255, 240, 238, 238);
const _semiLightGrey = Color.fromARGB(255, 185, 185, 185);
const _transparent = Colors.transparent;
const _kzColor = Color(0xFF00AEBD);

extension ColorThemeDataExtension on ThemeData {
  Color get primary => _primary;
  Color get secondary => _secondary;
  Color get black => _black;
  Color get white => _white;
  Color get red => _red;
  Color get lightRed => _lightRed;
  Color get darkRed => _darkRed;
  Color get blue => _blue;
  Color get lightBlue => _lightBlue;
  Color get green => _green;
  Color get lightGreen => _lightGreen;
  Color get background => _background;
  Color get stroke => _stroke;

  Color get navBar => _navBar;
  Color get scaffoldBackground => _scaffoldBackground;
  Color get grey => _grey;
  Color get lightGrey => _lightGrey;
  Color get semiLightGrey => _semiLightGrey;
  Color get transparent => _transparent;
  Color get kzColor => _kzColor;
}
