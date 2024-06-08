import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/modal_drag_widget.dart';

class CustomAddressModalWidget extends StatelessWidget {
  const CustomAddressModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final lableStyle = context.theme.textStyles.bodyMain
        .copyWith(color: context.theme.secondary);
    final titleStyle = context.theme.textStyles.titleSecondary;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(UIConstants.defaultGap3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ModalDragWidget(),
            const Gap(UIConstants.defaultGap3),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(S.current.delivery, style: lableStyle),
                    const Gap(UIConstants.defaultGap5),
                    Text('800 〒', style: context.theme.textStyles.extraTitle),
                  ],
                ),
                Assets.icons.solid.routeSolid1.svg(
                    height: 24,
                    width: 24,
                    colorFilter:
                        ColorFilter.mode(context.theme.red, BlendMode.srcIn)),
              ],
            ),
            const Divider(),
            Text(S.current.delivery,
                style: titleStyle.copyWith(color: context.theme.blue)),
            const Gap(UIConstants.defaultPadding),
            Text(S.current.where_from, style: lableStyle),
            const Gap(UIConstants.defaultGap5),
            Text('Титова 14', style: titleStyle),
            const Gap(UIConstants.defaultGap2),
            Text(S.current.where, style: lableStyle),
            const Gap(UIConstants.defaultGap5),
            Text('Королева 12', style: titleStyle),
            const Gap(UIConstants.defaultGap2),
            Text(S.current.comments, style: lableStyle),
            const Gap(UIConstants.defaultGap5),
            Text('2 подъезд, 28 квартира', style: titleStyle),
            const Gap(UIConstants.defaultGap3),
            CustomMainButtonWidget(
              title: S.current.accept_order,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
