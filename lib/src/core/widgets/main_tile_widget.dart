import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class MainTileWidget extends StatelessWidget {
  final String title;
  final String? subTitle;
  final VoidCallback? onTap;
  final bool showUnderline;

  const MainTileWidget({
    Key? key,
    required this.title,
    this.subTitle,
    required this.onTap,
    this.showUnderline = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: context.theme.secondary.withOpacity(0.3),
      highlightColor: context.theme.secondary.withOpacity(0.2),
      child: Container(
        height: 54,
        decoration: showUnderline
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    strokeAlign: BorderSide.strokeAlignInside,
                    width: 1,
                    color: context.theme.stroke,
                  ),
                ),
              )
            : null,
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: Text(
                title,
                style: context.theme.textStyles.headLine,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            subTitle == null
                ? const Offstage()
                : Expanded(
                    flex: 4,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: UIConstants.defaultGap2),
                      child: Text(
                        subTitle ?? '',
                        textAlign: TextAlign.right,
                        style: context.theme.textStyles.bodySecondary
                            .copyWith(color: context.theme.secondary),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
            const Gap(UIConstants.defaultGap2),
            Assets.icons.regular.chevronRightSolid.svg(
              width: 18,
              height: 18,
              colorFilter:
                  ColorFilter.mode(context.theme.secondary, BlendMode.srcIn),
            )
          ],
        ),
      ),
    );
  }
}
