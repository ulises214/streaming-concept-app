part of 'styled_text.dart';

TextStyle? _getStyleByType(TextProperties textProperties) {
  final textTheme = kStramingAppTheme.textTheme;
  switch (textProperties.type) {
    case null:
      return textTheme.bodyText1;
    case TextType.h1:
      return textTheme.headline1;
    case TextType.h6:
      return textTheme.headline6;
    case TextType.body1:
      return textTheme.bodyText1;
    case TextType.body2:
      return textTheme.bodyText2;
    case TextType.caption:
      return textTheme.caption;
    case TextType.button:
      return textTheme.button;
    case TextType.h2:
      return textTheme.headline2;
    case TextType.h3:
      return textTheme.headline2;
    case TextType.h4:
      return textTheme.headline4;
    case TextType.h5:
      return textTheme.headline5;
  }
}

class TextProperties {
  final bool? bold;

  final bool? italic;

  final Color? color;

  final TextType? type;

  const TextProperties({
    this.bold,
    this.italic,
    this.color,
    this.type,
  });

  TextProperties copyWith({
    bool? bold,
    bool? italic,
    Color? color,
    TextType? type,
  }) {
    return TextProperties(
      bold: bold ?? this.bold,
      italic: italic ?? this.italic,
      color: color ?? this.color,
      type: type ?? this.type,
    );
  }
}

enum TextType {
  h1,
  h2,
  h3,
  h4,
  h5,
  h6,
  body1,
  body2,
  caption,
  button,
}
