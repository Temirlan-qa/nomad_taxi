import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/toggle_widget.dart';

class CustomSelectButtonWidget extends StatelessWidget {
  const CustomSelectButtonWidget({
    super.key,
    required this.child,
    required this.onTap,
    required this.toggleState,
  });

  final Widget child;
  final VoidCallback onTap;
  final bool toggleState;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.background,
      borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
        child: AnimatedContainer(
          duration: Durations.medium1,
          padding: const EdgeInsets.all(UIConstants.defaultPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
              border:
                  toggleState ? Border.all(color: context.theme.red) : null),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedContainer(
                      duration: Durations.short3,
                      padding: EdgeInsets.only(
                          bottom: toggleState ? UIConstants.defaultGap7 : 0),
                      height: toggleState ? UIConstants.defaultGap3 : 0,
                      child: AnimatedOpacity(
                        opacity: toggleState ? 1.0 : 0.0,
                        duration: Durations.medium3,
                        child: Text(
                          S.current.selected_tariff,
                          style: context.theme.textStyles.bodyMain
                              .copyWith(color: context.theme.red),
                        ),
                      ),
                    ),
                    child
                  ],
                ),
              ),
              SizedBox(
                width: 24,
                height: 24,
                child: ToggleWidget(
                  value: toggleState,
                  isRed: true,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
