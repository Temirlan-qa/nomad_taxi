import 'package:flutter/material.dart';

class CustomAnimationWidget extends StatefulWidget {
  const CustomAnimationWidget({super.key, required this.child});
  final Widget child;

  @override
  State<CustomAnimationWidget> createState() => _CustomAnimationWidgetState();
}

class _CustomAnimationWidgetState extends State<CustomAnimationWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Durations.long1,
    );
    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
    _opacityAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
        scale: _scaleAnimation,
        child: FadeTransition(opacity: _opacityAnimation, child: widget.child));
  }
}
