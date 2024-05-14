import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

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
      elevation: 0,
      leading: Container(
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.symmetric(horizontal: 6),
        width: 48,
        height: 48,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: context.theme.white),
        child: leading,
      ),
      backgroundColor: context.theme.transparent,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
