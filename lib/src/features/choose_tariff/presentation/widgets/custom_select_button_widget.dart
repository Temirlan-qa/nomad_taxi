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
                      AnimatedCrossFade(
                        duration: Durations.medium1,
                        firstChild: AnimatedPadding(
                          duration: Durations.medium1,
                          padding: const EdgeInsets.only(
                              bottom: UIConstants.defaultGap7),
                          child: Text(
                            S.current.selected_tariff,
                            style: context.theme.textStyles.bodyMain
                                .copyWith(color: context.theme.red),
                          ),
                        ),
                        secondChild: const Offstage(),
                        crossFadeState: toggleState
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                      ),
                      widget.child
                    ],
                  ),
                ),
                SizedBox(
                  width: 24,
                  height: 24,
                  child: ToggleWidget(value: toggleState),
                )
              ],
            )),
      ),
    );
  }
}
