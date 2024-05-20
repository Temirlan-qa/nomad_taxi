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
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? context.theme.white,
      leading: leading,
      leadingWidth: 110,
      elevation: elevation ?? 0,
      title: appBarText != null
          ? Text(
              appBarText!,
              style: textStyle ?? TextStyle(color: context.theme.primary),
            )
          : null,
      centerTitle: centerTitle ?? true,
      actions: actions,
    );
  }
}
