import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  final Gradient? gradient;
  final EdgeInsets? padding;

  const GradientContainer({
    super.key,
    required this.child,
    this.gradient,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(gradient: gradient),
      child: child,
    );
  }
}
