import 'package:flutter/material.dart';

class WhiteDevider extends StatelessWidget {
  const WhiteDevider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 6,
        width: 40,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
