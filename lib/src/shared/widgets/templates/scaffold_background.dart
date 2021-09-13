import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme/tokens.dart';

/// Defines a common backgrpund for all scaffolds in the application
class ScaffoldBackground extends StatelessWidget {
  final Widget child;
  const ScaffoldBackground({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(gradient: kGradientScaffoldBackground),
        child: Stack(
          children: [
            Positioned(
              bottom: -(size.height * 0.1),
              left: -(size.width * 0.2),
              child: const _CircleColor(color: kColorOrange, size: 200),
            ),
            Positioned(
              bottom: size.height * 0.1,
              left: size.width * 0.4,
              child: const _CircleColor(color: kColorGreen, size: 200),
            ),
            Positioned(
              top: size.height * 0.3,
              left: -(size.width * 0.1),
              child: const _CircleColor(color: kColorOrange, size: 160),
            ),
            Positioned(
              top: size.height * 0.2,
              right: -(size.width * 0.1),
              child: const _CircleColor(color: kColorPink, size: 190),
            ),
            Positioned(
              top: size.height * 0.1,
              right: size.width * 0.2,
              child: const _CircleColor(color: kColorPurple, size: 120),
            ),
            Positioned.fill(child: Container(child: child)),
          ],
        ),
      ),
    );
  }
}

class _CircleColor extends StatelessWidget {
  final Color color;
  final double size;
  final double opacity;
  const _CircleColor({
    Key? key,
    this.opacity = 0.4,
    required this.color,
    required this.size,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color.withOpacity(opacity),
        shape: BoxShape.circle,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
        child: Container(),
      ),
    );
  }
}
