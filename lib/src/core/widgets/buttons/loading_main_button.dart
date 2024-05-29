import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class LoadingMainButton extends StatelessWidget {
  const LoadingMainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        foregroundColor: context.theme.primary,
        backgroundColor: context.theme.red,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Offstage(),
          const Gap(UIConstants.defaultGap2),
          SizedBox(
            height: 20,
            width: 20,
            child: CircularProgressIndicator(
              color: context.theme.white,
              strokeWidth: 2,
            ),
          ),
          const Gap(UIConstants.defaultGap2),
          const Offstage(),
        ],
      ),
    );
  }
}
