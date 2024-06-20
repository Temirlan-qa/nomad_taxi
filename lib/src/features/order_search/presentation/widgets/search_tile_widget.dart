import 'package:flutter/material.dart';
import 'package:nomad_taxi/gen/assets.gen.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class SearchTileWidget extends StatelessWidget {
  final String title;
  final String? subTitle;
  final VoidCallback? onTap;
  final bool showUnderline;
  final bool showIcon;

  const SearchTileWidget({
    super.key,
    required this.title,
    this.subTitle,
    required this.onTap,
    this.showUnderline = true,
    this.showIcon = true,
  });

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
            Padding(
              padding: const EdgeInsets.only(right: UIConstants.defaultGap2),
              child: Assets.icons.regular.clockRegular.svg(
                width: 18,
                height: 18,
                colorFilter:
                    ColorFilter.mode(context.theme.secondary, BlendMode.srcIn),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                title,
                style: context.theme.textStyles.headLine,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
