import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? appBarText;
  final TextStyle? textStyle;
  final Widget? leading;
  final double height;
  final Color? backgroundColor;
  final bool? centerTitle;
  final List<Widget>? actions;
  final double? elevation;
  final bool isDrawer;

  const CustomAppBar({
    super.key,
    this.appBarText,
    this.backgroundColor,
    this.centerTitle,
    this.actions,
    this.leading,
    this.textStyle,
    this.elevation,
    this.height = kToolbarHeight,
    this.isDrawer = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? context.theme.white,
      leading: leading,
      automaticallyImplyLeading: false,
      leadingWidth: isDrawer ? kToolbarHeight : 110,
      elevation: elevation ?? 0,
      title: appBarText != null
          ? Text(appBarText!,
              style: textStyle ?? context.theme.textStyles.titleSecondary)
          : null,
      centerTitle: centerTitle ?? true,
      actions: actions,
    );
  }
}
