import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme/tokens.dart';

class GlassCard extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;
  final double backgroundOppacity;
  const GlassCard({
    Key? key,
    required this.borderRadius,
    required this.child,
    this.backgroundOppacity = 0.2,
  }) : super(key: key);
  const GlassCard.bigCard({
    Key? key,
    required this.child,
    this.backgroundOppacity = 0.2,
  })  : borderRadius = const BorderRadius.all(kRadiusBigCard),
        super(key: key);
  const GlassCard.smallCard({
    Key? key,
    required this.child,
    this.backgroundOppacity = 0.2,
  })  : borderRadius = const BorderRadius.all(kRadiusSmallCard),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: kColorCardsBackground.withOpacity(backgroundOppacity),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: child,
          ),
        ],
      ),
    );
  }
}
