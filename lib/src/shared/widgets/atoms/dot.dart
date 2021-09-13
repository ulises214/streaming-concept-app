import 'package:flutter/material.dart';

import '../../theme/tokens.dart';

class Dot extends StatelessWidget {
  final Color color;
  const Dot(this.color, {Key? key}) : super(key: key);
  const factory Dot.green() = _DotGreen;
  const factory Dot.purple() = _DotPurple;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundColor: color, radius: 5);
  }
}

class _DotGreen extends Dot {
  const _DotGreen() : super(kColorGreen);
}

class _DotPurple extends Dot {
  const _DotPurple() : super(kColorPurple);
}
