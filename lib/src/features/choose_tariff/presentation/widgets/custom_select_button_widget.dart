import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/constants/ui_constants.dart';
import 'package:nomad_taxi/src/core/localization/generated/l10n.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';
import 'package:nomad_taxi/src/core/widgets/toggle_widget.dart';

class CustomSelectButtonWidget extends StatefulWidget {
  const CustomSelectButtonWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<CustomSelectButtonWidget> createState() =>
      _CustomSelectButtonWidgetState();
}

class _CustomSelectButtonWidgetState extends State<CustomSelectButtonWidget> {
  bool toggleState = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.background,
      borderRadius: BorderRadius.circular(UIConstants.defaultRadius),
      child: InkWell(
        onTap: () {
          setState(() {
            toggleState = !toggleState;
          });
        },
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
                          child: Text(S.current.selected_tariff,
                              style: context.theme.textStyles.bodyMain
                                  .copyWith(color: context.theme.red)),
                        ),
                      ),
                      widget.child
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
            )),
      ),
    );
  }
}
