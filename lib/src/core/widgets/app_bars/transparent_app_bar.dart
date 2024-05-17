import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget leading;
  const TransparentAppBar({
    super.key,
    this.height = kToolbarHeight,
    required this.leading,
  });

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: leading,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
