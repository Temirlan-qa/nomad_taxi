import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/core/widgets/modal_drag_widget.dart';

class CustomInfoModalWidget extends StatelessWidget {
  const CustomInfoModalWidget({
    super.key,
    required this.title,
    required this.description,
    required this.date,
  });
  final String title;
  final String description;
  final String date;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(UIConstants.defaultGap3),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ModalDragWidget(),
            const Gap(UIConstants.defaultGap3),
            Text(title, style: context.theme.textStyles.titleMain),
            const Gap(UIConstants.defaultGap2),
            Flexible(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Text(
                  description,
                  style: context.theme.textStyles.bodyMain,
                ),
              ),
            ),
            const Gap(UIConstants.defaultGap3),
            Text(
              S.current.developerAnswer,
              style: context.theme.textStyles.bodySecondary.copyWith(
                color: context.theme.secondary,
              ),
            ),
            const Gap(UIConstants.defaultGap5),
            Text(
              date,
              style: context.theme.textStyles.headLine.copyWith(
                color: context.theme.secondary,
              ),
            ),
            const Gap(UIConstants.defaultGap3),
            CustomMainButtonWidget(
              title: S.current.close,
              onPressed: () {
                context.pop();
              },
              isMain: false,
            ),
          ],
        ),
      ),
    );
  }
}
