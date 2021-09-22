import 'package:flutter/material.dart';

class KeepStateWidget extends StatefulWidget {
  final Widget child;
  const KeepStateWidget({Key? key, required this.child}) : super(key: key);
  @override
  _KeepStateWidgetState createState() => _KeepStateWidgetState();
}

class _KeepStateWidgetState extends State<KeepStateWidget>
    with AutomaticKeepAliveClientMixin<KeepStateWidget> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }
}
