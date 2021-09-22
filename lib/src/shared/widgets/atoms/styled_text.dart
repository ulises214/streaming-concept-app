import 'package:flutter/material.dart';

import '../../theme/theme.dart';

part 'styled_text_properties.dart';

class StyledText extends StatelessWidget {
  final String text;

  final TextProperties textProperties;

  const StyledText(this.text,
      {Key? key, this.textProperties = const TextProperties()})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getStyleByType(textProperties)?.copyWith(
        fontWeight: textProperties.bold == true ? FontWeight.bold : null,
        fontStyle: textProperties.italic == true ? FontStyle.italic : null,
        color: textProperties.color,
        fontSize: textProperties.fontSize,
      ),
    );
  }
}
