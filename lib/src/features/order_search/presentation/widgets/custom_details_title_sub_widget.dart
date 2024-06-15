import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomDetailsTitleSubWidget extends StatelessWidget {
  const CustomDetailsTitleSubWidget(
      {super.key, required this.title, required this.subTitle, this.subStyle});
  final String title;
  final String subTitle;
  final TextStyle? subStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.theme.textStyles.bodyMain.copyWith(
            color: context.theme.secondary,
          ),
        ),
        const Gap(UIConstants.defaultGap5),
        Text(
          subTitle,
          style: subStyle ?? context.theme.textStyles.bodyMain,
        ),
      ],
    );
  }
}
