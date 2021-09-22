import 'package:flutter/material.dart';

class SpacedWidgetList {
  final List<Widget> widgets;
  final Axis direction;
  final double space;

  /// If true set space before widget, if false set widget before space
  final bool reversed;
  const SpacedWidgetList(
    this.widgets, {
    required this.direction,
    this.space = 5.0,
    this.reversed = false,
  });
  List<Widget> list() {
    return widgets.expand((e) {
      final hasHeight = direction == Axis.vertical;
      final spacer = SizedBox(
        height: hasHeight ? space : null,
        width: hasHeight ? null : space,
      );
      if (reversed) return [spacer, e];
      return [e, spacer];
    }).toList();
  }
}
