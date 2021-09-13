import 'package:flutter/material.dart';

import 'tokens.dart';

final kStramingAppTheme = _baseTheme.copyWith(
  scaffoldBackgroundColor: kColorBlack,
  appBarTheme: _baseTheme.appBarTheme.copyWith(
    elevation: 0,
    color: Colors.transparent,
  ),
  textTheme: _textTheme,
);
final _baseTextTheme = _baseTheme.textTheme;
final _baseTheme = ThemeData.dark();
final _textTheme = _baseTextTheme
    .copyWith(
      headline1: _baseTextTheme.headline1!
          .copyWith(fontSize: 96, fontWeight: FontWeight.w300),
      headline2: _baseTextTheme.headline2!
          .copyWith(fontSize: 60, fontWeight: FontWeight.w300),
      headline3: _baseTextTheme.headline3!
          .copyWith(fontSize: 48, fontWeight: FontWeight.w400),
      headline4: _baseTextTheme.headline4!
          .copyWith(fontSize: 34, fontWeight: FontWeight.w400),
      headline5: _baseTextTheme.headline5!
          .copyWith(fontSize: 24, fontWeight: FontWeight.w400),
      headline6: _baseTextTheme.headline6!
          .copyWith(fontSize: 20, fontWeight: FontWeight.w500),
      subtitle1: _baseTextTheme.subtitle1!
          .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
      subtitle2: _baseTextTheme.subtitle2!
          .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
      bodyText1: _baseTextTheme.bodyText1!
          .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
      bodyText2: _baseTextTheme.bodyText2!
          .copyWith(fontSize: 14, fontWeight: FontWeight.w400),
      button: _baseTextTheme.button!
          .copyWith(fontSize: 14, fontWeight: FontWeight.w500),
      caption: _baseTextTheme.caption!
          .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
      overline: _baseTextTheme.overline!
          .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
    )
    .apply(fontFamily: 'Poppins');
