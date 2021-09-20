import 'package:flutter/material.dart';

class FlatMaterialButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget? child;
  final Color? color;
  final ShapeBorder? shape;

  const FlatMaterialButton(
      {Key? key, this.onPressed, this.child, this.color, this.shape})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.only(),
      onPressed: onPressed,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      color: color,
      shape: shape,
      child: child,
    );
  }
}
