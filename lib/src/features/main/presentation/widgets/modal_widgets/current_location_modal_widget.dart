import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/buttons/main_button_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_animation_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_container_widget.dart';

class CurrentLocationModalWidget extends StatelessWidget {
  const CurrentLocationModalWidget({
    super.key,
    required this.onTapSelect,
    required this.currentLocation,
  });
  final VoidCallback? onTapSelect;
  final String currentLocation;

  @override
  Widget build(BuildContext context) {
    return CustomAnimationWidget(
      child: CustomContainerWidget(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              color: context.theme.transparent,
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(UIConstants.defaultGap2),
              child: InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(UIConstants.defaultGap7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(S.current.select,
                              style: context.theme.textStyles.bodyMain
                                  .copyWith(color: context.theme.secondary)),
                        ],
                      ),
                      const Gap(UIConstants.defaultGap7),
                      Text(currentLocation,
                          style: context.theme.textStyles.titleSecondary),
                    ],
                  ),
                ),
              ),
            ),
            const Gap(UIConstants.defaultPadding),
            CustomMainButtonWidget(
              title: S.current.select,
              onPressed: onTapSelect,
            ),
          ],
        ),
      ),
    );
  }
}
