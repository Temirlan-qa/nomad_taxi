import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/modal_drag_widget.dart';

class ShowModalWidget extends StatelessWidget {
  const ShowModalWidget({
    super.key,
    required this.text,
    required this.cancelText,
    required this.acceptText,
    required this.cancel,
    required this.accept,
    required this.desc,
  });
  final String text;
  final String desc;
  final String cancelText;
  final String acceptText;
  final VoidCallback cancel;
  final VoidCallback accept;
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
            Text(text, style: context.theme.textStyles.titleMain),
            const Gap(UIConstants.defaultGap2),
            Flexible(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Text(
                  desc,
                  textAlign: TextAlign.center,
                  style: context.theme.textStyles.bodyMain
                      .copyWith(color: context.theme.secondary),
                ),
              ),
            ),
            const Gap(48),
            CustomMainButtonWidget(
              title: cancelText,
              onPressed: cancel,
            ),
            const Gap(UIConstants.defaultGap1),
            CustomMainButtonWidget(
              title: acceptText,
              onPressed: accept,
              color: context.theme.red,
              isMain: false,
            ),
          ],
        ),
      ),
    );
  }
}
