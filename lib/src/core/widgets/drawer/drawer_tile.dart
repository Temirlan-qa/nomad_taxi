import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class DrawerTile extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final bool showUnderline;
  final bool isSelected;

  const DrawerTile(
      {super.key,
      required this.title,
      required this.onTap,
      this.showUnderline = true,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected ? context.theme.background : context.theme.transparent,
      child: InkWell(
        onTap: onTap,
        splashColor: context.theme.secondary.withOpacity(0.3),
        highlightColor: context.theme.secondary.withOpacity(0.2),
        child: SizedBox(
          height: 54,
          child: Stack(
            children: [
              Container(
                height: 54,
                margin:
                    const EdgeInsets.only(left: UIConstants.defaultPadding2),
                decoration: showUnderline
                    ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              strokeAlign: BorderSide.strokeAlignInside,
                              width: 1,
                              color: context.theme.stroke),
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
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: AnimatedContainer(
                  duration: Durations.short3,
                  height: 24,
                  width: 6,
                  decoration: BoxDecoration(
                    color: isSelected ? context.theme.red : null,
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(6),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
