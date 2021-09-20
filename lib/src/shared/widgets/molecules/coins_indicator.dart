import 'package:flutter/material.dart';

import '../atoms/svg_icon.dart';

class CoinsIndicator extends StatelessWidget {
  const CoinsIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.white12,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      shape: const StadiumBorder(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SvgIcon(SvgIconData.coin),
          SizedBox(width: 5.0),
          Text('200'),
        ],
      ),
    );
  }
}
