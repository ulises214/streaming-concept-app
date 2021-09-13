import 'package:flutter/material.dart';

import '../../theme/tokens.dart';
import '../atoms/styled_text.dart';

class UserAppBarTitle extends StatelessWidget {
  const UserAppBarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        StyledText(
          'Walle214',
          textProperties: TextProperties(type: TextType.h6, bold: true),
        ),
        StyledText(
          'ONLINE',
          textProperties: TextProperties(
            type: TextType.caption,
            color: kColorGreen,
          ),
        ),
      ],
    );
  }
}
