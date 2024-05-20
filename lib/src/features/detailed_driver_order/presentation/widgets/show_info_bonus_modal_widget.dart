import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/modal_drag_widget.dart';

class CustomInfoBonusModalWidget extends StatelessWidget {
  const CustomInfoBonusModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(UIConstants.defaultGap3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ModalDragWidget(),
            const Gap(UIConstants.defaultGap3),
            Assets.icons.brand.main.svg(),
            const Gap(UIConstants.defaultPadding),
            Text(S.current.bonuses_also_money,
                textAlign: TextAlign.center,
                style: context.theme.textStyles.extraTitle),
            const Gap(UIConstants.defaultPadding),
            Text(S.current.bonuses_desc,
                textAlign: TextAlign.center,
                style: context.theme.textStyles.bodyMain),
            const Gap(UIConstants.defaultGap6),
            CustomMainButtonWidget(
              title: S.current.close,
              onPressed: () {
                context.pop();
              },
              isMain: false,
            )
          ],
        ),
      ),
    );
  }
}
