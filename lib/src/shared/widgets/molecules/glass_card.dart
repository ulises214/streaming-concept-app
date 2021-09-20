import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme/tokens.dart';

class GlassCard extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;
  const GlassCard({
    Key? key,
    required this.borderRadius,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Stack(
        children: [
          Positioned.fill(child: Container(color: kColorCardsBackground)),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: child,
          ),
        ],
      ),
    );
  }
}
