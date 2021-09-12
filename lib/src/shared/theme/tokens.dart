import 'package:flutter/material.dart';

const kColorBlack = Color.fromRGBO(0x09, 0x0A, 0x1A, 1);
const kColorBrown = Color.fromRGBO(0x50, 0x33, 0x42, 1);
const kColorDarkPurple = Color.fromRGBO(0x22, 0x20, 0x52, 1);
const kColorGray = Color.fromRGBO(0xAE, 0xAB, 0xBE, 1);
const kColorGreen = Color.fromRGBO(0x74, 0x9D, 0x94, 1);
const kColorOrange = Color.fromRGBO(0xA6, 0x42, 0x42, 1);
const kColorPink = Color.fromRGBO(0xA9, 0x1E, 0xBE, 1);
const kColorPurple = Color.fromRGBO(0x3B, 0x2E, 0xB5, 1);
const kColorsAllBubbleColors = [
  kColorBrown,
  kColorDarkPurple,
  kColorGray,
  kColorGreen,
  kColorOrange,
  kColorPink,
  kColorPurple,
];
const kGradientScaffoldBackground = LinearGradient(
  colors: [
    kColorPurple,
    kColorDarkPurple,
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
