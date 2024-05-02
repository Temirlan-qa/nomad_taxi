part of 'theme.dart';

extension ContextExtension on BuildContext {
  FluentThemeData get theme => FluentTheme.of(this);
  Typography get typography => theme.typography;
}
