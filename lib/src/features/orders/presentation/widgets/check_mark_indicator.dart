import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//TODO: refactor

class CheckMarkColors {
  final Color content;
  final Color background;

  const CheckMarkColors({
    required this.content,
    required this.background,
  });
}

class CheckMarkStyle {
  final CheckMarkColors loading;
  final CheckMarkColors completed;

  const CheckMarkStyle({
    required this.loading,
    required this.completed,
  });

  static const defaultStyle = CheckMarkStyle(
    loading:
        CheckMarkColors(content: Colors.white, background: Color(0xFFFF004D)),
    completed:
        CheckMarkColors(content: Colors.white, background: Color(0xFF26CE55)),
  );
}

class CheckMarkIndicator extends StatefulWidget {
  final Widget child;
  final CheckMarkStyle style;

  const CheckMarkIndicator({
    super.key,
    required this.child,
    this.style = CheckMarkStyle.defaultStyle,
  });

  @override
  State<CheckMarkIndicator> createState() => _CheckMarkIndicatorState();
}

class _CheckMarkIndicatorState extends State<CheckMarkIndicator>
    with SingleTickerProviderStateMixin {
  bool _renderCompleteState = false;

  ScrollDirection prevScrollDirection = ScrollDirection.idle;
  final double _indicatorSize = 60;
  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: () => Future.delayed(const Duration(seconds: 2)),
      durations: const RefreshIndicatorDurations(
        completeDuration: Duration(seconds: 2),
      ),
      onStateChanged: (change) {
        if (change.didChange(to: IndicatorState.complete)) {
          _renderCompleteState = true;
        } else if (change.didChange(to: IndicatorState.idle)) {
          _renderCompleteState = false;
        }
      },
      builder: (
        BuildContext context,
        Widget child,
        IndicatorController controller,
      ) {
        final style = _renderCompleteState
            ? widget.style.completed
            : widget.style.loading;
        return Stack(
          children: [
            AnimatedBuilder(
              animation: controller,
              builder: (BuildContext context, Widget? _) {
                return SizedBox(
                  height: controller.value * _indicatorSize,
                  child: Center(
                    child: AnimatedContainer(
                      width: 30,
                      height: 30,
                      duration: const Duration(milliseconds: 150),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: style.background,
                        shape: BoxShape.circle,
                      ),
                      child: _renderCompleteState
                          ? const Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: style.content,
                                value:
                                    controller.isDragging || controller.isArmed
                                        ? controller.value.clamp(0.0, 1.0)
                                        : null,
                              ),
                            ),
                    ),
                  ),
                );
              },
            ),
            AnimatedBuilder(
              builder: (context, _) {
                return Transform.translate(
                  offset: Offset(0.0, controller.value * _indicatorSize),
                  child: child,
                );
              },
              animation: controller,
            ),
          ],
        );
      },
      child: widget.child,
    );
  }
}
