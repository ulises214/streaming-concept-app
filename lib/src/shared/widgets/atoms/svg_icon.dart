import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'svg_icon_data.dart';

class SvgIcon extends StatelessWidget {
  final SvgIconData data;
  final String? semanticsLabel;
  final double? size;
  final Color? color;
  const SvgIcon(
    this.data, {
    Key? key,
    this.semanticsLabel,
    this.size = 20,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = this.size ?? Theme.of(context).iconTheme.size;
    return SvgPicture.asset(
      data.path,
      semanticsLabel: semanticsLabel,
      width: size,
      height: size,
      color: color,
    );
  }
}
