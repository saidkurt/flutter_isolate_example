import 'package:flutter/material.dart';
import 'dart:math' as math;

class BaseRotateAnimationWidget extends StatefulWidget {
  final Widget animationBodyWidget;
  const BaseRotateAnimationWidget(
      {super.key, required this.animationBodyWidget});

  @override
  State<BaseRotateAnimationWidget> createState() =>_BaseRotateAnimationWidgetState();
}

class _BaseRotateAnimationWidgetState extends State<BaseRotateAnimationWidget> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animationController.repeat();
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        child: widget.animationBodyWidget,
        builder: (context, comp) => Transform.rotate(angle: _animationController.value * 2 * math.pi,child: comp));
  }
}