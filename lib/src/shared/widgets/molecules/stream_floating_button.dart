import 'package:flutter/material.dart';

import '../../theme/tokens.dart';
import '../atoms/svg_icon.dart';

// Path _genDiamondPath(Size size) {

//   return path;
// }

class StreamFloatingActionButton extends StatelessWidget {
  const StreamFloatingActionButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const basePadding = 24.0;
    const aspectRatio = 1.6;
    return Padding(
      padding: const EdgeInsets.only(bottom: kFloatingActionButtonDyOffset),
      child: Material(
        clipBehavior: Clip.hardEdge,
        type: MaterialType.button,
        color: kColorPurpleSecondary,
        shape: _DiamondShapeBorder(),
        child: InkWell(
          onTap: () {},
          child: Padding(
            // ? Top * 2 = Bottom
            // ? Right = Left
            // ? (Top + Bottom) * 1.25 = Rigth + Left
            padding:
                const EdgeInsets.symmetric(horizontal: basePadding).copyWith(
              // ? Put icon in highter position
              top: (basePadding / aspectRatio) * 0.6,
              bottom: (basePadding / aspectRatio) * 1.4,
            ),
            child: const SvgIcon(
              SvgIconData.stream,
              size: 28,
            ),
          ),
        ),
      ),
    );
  }
}

class _DiamondShapeBorder extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => const EdgeInsets.only();

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..addPolygon([
        Offset(0, rect.height * 0.5),
        Offset(rect.width * 0.2, 0),
        Offset(rect.width * 0.8, 0),
        Offset(rect.width, rect.height * 0.5),
        Offset(rect.width / 2, rect.height),
      ], true);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return this;
  }
}
