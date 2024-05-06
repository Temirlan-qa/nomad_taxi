import 'package:flutter/material.dart';
import 'package:nomad_taxi/src/core/theme/theme.dart';

class CustomCursorWidget extends StatefulWidget {
  const CustomCursorWidget({super.key});

  @override
  State<CustomCursorWidget> createState() => _CustomCursorWidgetState();
}

class _CustomCursorWidgetState extends State<CustomCursorWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOutCubic);
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return FadeTransition(
            opacity: _animation,
            child: Container(
              height: 30,
              width: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: context.theme.primary,
              ),
            ),
          );
        },
      ),
    );
  }
}
