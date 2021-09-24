import 'package:flutter/material.dart';

import '../../../../context/game/domain/game.dart';
import 'glass_card.dart';

class LargeGameCard extends StatelessWidget {
  final Game game;
  const LargeGameCard({Key? key, required this.game}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 30.0,
          height: 30.0,
          color: Colors.red,
        ),
        Positioned.fill(
          child: GlassCard.bigCard(
            child: Text(game.longName),
          ),
        ),
      ],
    );
  }
}
