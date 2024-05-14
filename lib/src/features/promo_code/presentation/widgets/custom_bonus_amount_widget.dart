import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomBonusAmountWidget extends StatelessWidget {
  const CustomBonusAmountWidget({super.key, required this.amount});
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(UIConstants.defaultGap1),
      decoration: BoxDecoration(
          color: context.theme.lightRed,
          borderRadius: BorderRadius.circular(UIConstants.defaultRadius)),
      child: Center(
        child: Text('+$amount',
            style: context.theme.textStyles.titleSecondary
                .copyWith(color: context.theme.red)),
      ),
    );
  }
}
