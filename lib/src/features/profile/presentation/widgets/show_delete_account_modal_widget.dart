import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/custom_main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/custom_modal_drag_widget.dart';

class CustomDeleteAccountModalWidget extends StatelessWidget {
  const CustomDeleteAccountModalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(UIConstants.defaultGap3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomModalDragWidget(),
            const Gap(48),
            Text(S.current.delete_account,
                style: context.theme.textStyles.titleMain),
            const Gap(UIConstants.defaultGap2),
            Flexible(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Text(
                  S.current.delete_account_desc,
                  textAlign: TextAlign.center,
                  style: context.theme.textStyles.bodyMain
                      .copyWith(color: context.theme.secondary),
                ),
              ),
            ),
            const Gap(48),
            CustomMainButtonWidget(
              title: S.current.close,
              onPressed: () {
                context.pop();
              },
            ),
            const Gap(UIConstants.defaultGap1),
            CustomMainButtonWidget(
              title: S.current.delete_account,
              onPressed: () {
                context.pop();
              },
              color: context.theme.red,
              isMain: false,
            ),
          ],
        ),
      ),
    );
  }
}
