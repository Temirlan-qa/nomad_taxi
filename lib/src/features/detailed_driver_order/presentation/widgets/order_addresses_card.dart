import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class OrderAddressesCard extends StatelessWidget {
  const OrderAddressesCard({
    super.key,
    required this.labelStyle,
    required this.titleStyle,
  });

  final TextStyle labelStyle;
  final TextStyle titleStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(UIConstants.defaultPadding),
      decoration: BoxDecoration(
          color: context.theme.background,
          borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
          border: Border.all(color: context.theme.stroke)),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(S.current.where_from, style: labelStyle),
              const Gap(UIConstants.defaultGap5),
              Text('Титова 14', style: titleStyle),
              const Gap(UIConstants.defaultGap2),
              Text(S.current.where, style: labelStyle),
              const Gap(UIConstants.defaultGap5),
              Text('Королева 12', style: titleStyle),
              const Gap(UIConstants.defaultGap2),
              Text(S.current.comments, style: labelStyle),
              const Gap(UIConstants.defaultGap5),
              Text('2 подъезд, 28 квартира', style: titleStyle),
            ],
          ),
        ],
      ),
    );
  }
}
