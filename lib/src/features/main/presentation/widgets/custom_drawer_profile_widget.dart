import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/router/router.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomDrawerProfileWidget extends StatelessWidget {
  const CustomDrawerProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(RouteNames.myProfile);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: UIConstants.defaultGap2),
        child: Row(
          children: [
            const Gap(UIConstants.defaultPadding),
            const CircleAvatar(radius: 28),
            const Gap(UIConstants.defaultGap2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Вася Пупкин',
                      style: context.theme.textStyles.titleSecondary),
                  const Gap(UIConstants.defaultGap1),
                  Text(
                    '+7 (705) 123 45 67',
                    style: context.theme.textStyles.titleTag
                        .copyWith(color: context.theme.secondary),
                  ),
                ],
              ),
            ),
            Assets.icons.regular.chevronRightSolid.svg(
                height: 18,
                width: 18,
                colorFilter:
                    ColorFilter.mode(context.theme.secondary, BlendMode.srcIn)),
            const Gap(30),
          ],
        ),
      ),
    );
  }
}
