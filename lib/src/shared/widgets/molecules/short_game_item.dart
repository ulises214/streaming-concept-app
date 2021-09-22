import 'package:flutter/material.dart';

import '../../../../context/game/domain/game.dart';
import '../atoms/styled_text.dart';

class ShortGameItem extends StatelessWidget {
  final Game game;
  const ShortGameItem({Key? key, required this.game}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(image: game.squareImage, width: 120, height: 120),
        const SizedBox(height: 10.0),
        StyledText(
          game.shortName,
          textProperties: const TextProperties(bold: true, fontSize: 14.0),
        ),
      ],
    );
  }
}
