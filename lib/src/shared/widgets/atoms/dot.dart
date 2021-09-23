import 'package:flutter/material.dart';

import '../../theme/tokens.dart';

class Dot extends StatelessWidget {
  final Color color;
  const Dot(this.color, {Key? key}) : super(key: key);
  const Dot.green({Key? key})
      : color = kColorGreen,
        super(key: key);
  const Dot.purple({Key? key})
      : color = kColorPurpleSecondary,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundColor: color, radius: 5);
  }
}
