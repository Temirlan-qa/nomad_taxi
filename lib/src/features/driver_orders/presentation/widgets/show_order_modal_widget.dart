import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_modal_drag_widget.dart';

class CustomOrderModalWidget extends StatelessWidget {
  const CustomOrderModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(UIConstants.defaultGap3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomModalDragWidget(),
            const Gap(UIConstants.defaultGap3),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.current.arrival_address,
                    style: context.theme.textStyles.bodyMain
                        .copyWith(color: context.theme.secondary)),
                const Gap(UIConstants.defaultGap1),
                Text('Королева 12', style: context.theme.textStyles.extraTitle),
              ],
            ),
            const Gap(UIConstants.defaultGap3),
            CustomMainButtonWidget(
              title: S.current.go_back,
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
