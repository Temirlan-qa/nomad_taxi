import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';

import '../../../../core/widgets/modal_drag_widget.dart';

class CustomLogOutModalWidget extends StatelessWidget {
  const CustomLogOutModalWidget({
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
            const ModalDragWidget(),
            const Gap(48),
            Text(S.current.you_want_exit,
                style: context.theme.textStyles.titleMain),
            const Gap(UIConstants.defaultGap2),
            Flexible(
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Text(S.current.you_want_exit_desc,
                      textAlign: TextAlign.center,
                      style: context.theme.textStyles.bodyMain
                          .copyWith(color: context.theme.secondary))),
            ),
            const Gap(48),
            CustomMainButtonWidget(
              title: S.current.stay,
              onPressed: () {
                context.pop();
              },
            ),
            const Gap(UIConstants.defaultGap1),
            CustomMainButtonWidget(
              title: S.current.log_out_account,
              onPressed: () {
                // //TODO: refactor auth route logic
                while (context.canPop()) {
                  context.pop();
                }
                context.pushReplacementNamed(RouteNames.auth);
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
