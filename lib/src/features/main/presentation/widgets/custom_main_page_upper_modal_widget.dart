import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_animation_widget.dart';
import 'package:nomad_taxi/src/features/main/presentation/widgets/custom_container_widget.dart';

class CustomMainPageUpperModalWidget extends StatefulWidget {
  const CustomMainPageUpperModalWidget({
    super.key,
  });

  @override
  State<CustomMainPageUpperModalWidget> createState() =>
      _CustomMainPageUpperModalWidgetState();
}

class _CustomMainPageUpperModalWidgetState
    extends State<CustomMainPageUpperModalWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomAnimationWidget(
      child: CustomContainerWidget(
        bottomPadding: UIConstants.defaultPadding,
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
                        children: [
                          Text(S.current.active_order,
                              style: context.theme.textStyles.titleSecondary),
                        ],
                      ),
                      const Gap(UIConstants.defaultGap2),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        children: [
                          Text('Мира 3',
                              style: context.theme.textStyles.bodyMain
                                  .copyWith(color: context.theme.secondary)),
                          Assets.icons.brand.arrow1.svg(
                              height: 16,
                              width: 16,
                              colorFilter: ColorFilter.mode(
                                  context.theme.secondary, BlendMode.srcIn)),
                          Text('Титова 14, Королева 13',
                              style: context.theme.textStyles.bodyMain
                                  .copyWith(color: context.theme.secondary)),
                        ],
                      ),
                      const Gap(UIConstants.defaultPadding),
                      Text(S.current.open,
                          style: context.theme.textStyles.headLine
                              .copyWith(color: context.theme.red))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
