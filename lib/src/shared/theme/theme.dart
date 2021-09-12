import 'package:flutter/material.dart';

import 'tokens.dart';

final stramingAppTheme = _baseTheme.copyWith(
  scaffoldBackgroundColor: kColorDarkPurple,
  appBarTheme: _baseTheme.appBarTheme.copyWith(
    elevation: 0,
    color: Colors.transparent,
  ),
);
final _baseTheme = ThemeData.dark();
