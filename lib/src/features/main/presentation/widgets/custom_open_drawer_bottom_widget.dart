import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomOpenDrawerButtonWidget extends StatelessWidget {
  const CustomOpenDrawerButtonWidget({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: IconButton(
        style: IconButton.styleFrom(
            maximumSize: const Size.fromHeight(48),
            fixedSize: const Size.fromHeight(48),
            minimumSize: const Size.fromHeight(48),
            iconSize: 24,
            backgroundColor: context.theme.white,
            padding: const EdgeInsets.all(UIConstants.defaultGap2)),
        onPressed: () {
          _scaffoldKey.currentState!.openDrawer();
        },
        icon: Assets.icons.regular.barsSolid.svg(
          colorFilter: ColorFilter.mode(context.theme.primary, BlendMode.srcIn),
          // width: 24,
          // height: 24,
        ),
      ),
    );
  }
}
