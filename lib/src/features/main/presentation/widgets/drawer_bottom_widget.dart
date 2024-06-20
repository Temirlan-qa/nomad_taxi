import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_animation_widget.dart';

class DrawerButtonWidget extends StatefulWidget {
  const DrawerButtonWidget({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    this.decoration,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;
  final Decoration? decoration;

  @override
  State<DrawerButtonWidget> createState() => _DrawerButtonWidgetState();
}

class _DrawerButtonWidgetState extends State<DrawerButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomAnimationWidget(
      child: Container(
        height: 48,
        width: 48,
        decoration: widget.decoration ??
            BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [StaticShadows.main],
            ),
        child: IconButton(
          style: IconButton.styleFrom(
              maximumSize: const Size.fromHeight(48),
              fixedSize: const Size.fromHeight(48),
              minimumSize: const Size.fromHeight(48),
              iconSize: 24,
              backgroundColor: context.theme.white,
              padding: const EdgeInsets.all(UIConstants.defaultGap2)),
          onPressed: () {
            widget._scaffoldKey.currentState!.openDrawer();
          },
          icon: Assets.icons.regular.barsSolid.svg(
            colorFilter:
                ColorFilter.mode(context.theme.primary, BlendMode.srcIn),
            // width: 24,
            // height: 24,
          ),
        ),
      ),
    );
  }
}
