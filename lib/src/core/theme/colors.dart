part of 'theme.dart';

//TODO(Aldiyar): design-дағы color-ларды тауып барин ауыстырып шыгу

const Color _red = Color(0xffBC1215);
const Color _errorRed = Color(0xffE70000);
const Color _redButtonBackground = Color(0xFF80070A);
const Color _lightRed = Color(0xffDE4343);
const Color _yellow = Color(0xffFFF500);
const Color _lightYellow = Color(0xffF8D866);
const Color _green = Color(0xff1CCB00);
const Color _greenButtonBackground = Color(0xFF1D621F);
const Color _lightGreen = Color(0xff47B34B);
const Color _blue = Color(0xff007FFF);
const Color _lightBlue = Color(0xff0091AD);
const Color _purple = Color(0xffBB86FC);
const Color _black = Color(0xff000000);
const Color _mainBackground = Color(0xff121212);
const Color _mainHeader = Color(0xff1E1E1E);
const Color _tableHeader = Color(0xff262626);
const Color _mainActionPad = Color(0xff292929);
const Color _tableBody = Color(0xff343434);
const Color _mainBackground2 = Color(0xff363636);
const Color _searchToolBar = Color(0xff6c6c6c);
const Color _tableActive = Color(0xff555555);
const Color _tableBorder = Color(0xff9F9F9F);
const Color _mainIcon = Color(0xffE0E0E0);
const Color _white = Color(0xffffffff);
const Color _mainAccent = Color(0xffDB925B);
const Color _mainAccent2 = Color(0xffC6AC8F);
const Color _darkGrey = Color(0xff404040);
const Color _mainGrey = Color(0xff4E4E4E);
const Color _lightGrey = Color(0xff828282);
const Color _buttonHover = Color(0xffDBC5AE);
const Color _buttonActive = Color(0xffE2CFBA);
const Color _grayC1 = Color(0xffC1C1C1);
const Color _audioWaveformSavedRegionColor = Color(0xff007FFF);
const Color _contextMenuColor = Color(0xFF2F2F2F);
const Color _purple8DA = Color(0xFF9FA8DA);

//Unnamed color in Design
const Color _black2B = Color(0xff2B2B2B);
const Color _e51014 = Color(0xFFE51014);
const Color _o3F = Color(0x3F000000);

const Color _audioTimeTextColor = Color(0xff3EB67E);
const Color _rcRegionMenuBackgroundColor = Color(0xFF1E1F1F);
const Color _rcRegionMenuBorderColor = Color(0xFFC4C4C4);
const Color _rcRegionBorderColor = Color(0xff0D8AE4);

const Color _pelengBackgroundColor = Color(0xff1A1553);
const Color _dividerColor = Color(0xFF9F9F9F);
const Color _audioWaveformColor = Color(0xFF06A885);
const Color _transparent = Colors.transparent;
const Color _mapTileLayerColor = Color(0xFFF3EFE9);
Color _containerInstance = const Color(0xFF333333).withOpacity(0.5);

AccentColor _accentColor =
    AccentColor.swatch(const <String, Color>{'normal': _mainAccent});

extension FluentThemeDataExtension on FluentThemeData {
  Color get red => _red;
  Color get o3F => _o3F;
  Color get errorRed => _errorRed;
  Color get redButtonBackground => _redButtonBackground;
  Color get lightRed => _lightRed;
  Color get yellow => _yellow;
  Color get searchToolBar => _searchToolBar;
  Color get lightYellow => _lightYellow;
  Color get green => _green;
  Color get greenButtonBackground => _greenButtonBackground;
  Color get lightGreen => _lightGreen;
  Color get blue => _blue;
  Color get lightBlue => _lightBlue;
  Color get purple => _purple;
  Color get black => _black;
  Color get mainBackground => _mainBackground;
  Color get mainHeader => _mainHeader;
  Color get tableHeader => _tableHeader;
  Color get mainActionPad => _mainActionPad;
  Color get tableBody => _tableBody;
  Color get mainBackground2 => _mainBackground2;
  Color get tableActive => _tableActive;
  Color get tableBorder => _tableBorder;
  Color get mainIcon => _mainIcon;
  Color get white => _white;
  Color get mainAccent => _mainAccent;
  Color get mainAccent2 => _mainAccent2;
  Color get darkGrey => _darkGrey;
  Color get mainGrey => _mainGrey;
  Color get lightGrey => _lightGrey;
  Color get buttonHover => _buttonHover;
  Color get buttonActive => _buttonActive;
  Color get grayC1 => _grayC1;

  Color get black2B => _black2B;
  Color get e51014 => _e51014;
  Color get purple8DA => _purple8DA;

  Color get audioTimeTextColor => _audioTimeTextColor;
  Color get dividerColor => _dividerColor;
  Color get audioWaveformColor => _audioWaveformColor;
  Color get audioWaveformSavedRegionColor => _audioWaveformSavedRegionColor;
  Color get containerInstance => _containerInstance;
  Color get contextMenuColor => _contextMenuColor;
  Color get pelengBackgroundColor => _pelengBackgroundColor;

  Color get rcRegionMenuBackgroundColor => _rcRegionMenuBackgroundColor;
  Color get rcRegionMenuBorderColor => _rcRegionMenuBorderColor;
  Color get rcRegionBorderColor => _rcRegionBorderColor;
  Color get transparent => _transparent;

  Color get mapTileLayerColor => _mapTileLayerColor;
}
