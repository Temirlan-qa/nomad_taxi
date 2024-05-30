import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/custom_text_icon_button_widget.dart';

class BackButtonWrapper extends StatelessWidget {
  const BackButtonWrapper({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 14),
            child: CustomTextIconButtonWidget(
              icon: Assets.icons.regular.chevronLeftSolid,
              title: S.current.back.toLowerCase(),
              onPressed: onPressed,
            )),
      ],
    );
  }
}
