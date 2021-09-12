import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'svg_image_data.dart';

class SvgImage extends StatelessWidget {
  final SvgImageData data;
  final String? semanticsLabel;
  final double? width;
  final double? height;
  const SvgImage(
    this.data, {
    Key? key,
    this.semanticsLabel,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      data.path,
      semanticsLabel: semanticsLabel,
      width: width,
      height: height,
    );
  }
}
