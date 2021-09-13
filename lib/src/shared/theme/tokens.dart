import 'package:flutter/material.dart';

const kColorBlack = Color.fromRGBO(0x10, 0x0E, 0x40, 1);

const kColorDarkPurple = Color.fromRGBO(0x05, 0x19, 0x60, 1);
const kColorGray = Color.fromRGBO(0x62, 0x6A, 0x93, 1);
const kColorGreen = Color.fromRGBO(0x29, 0xC6, 0x9B, 1);
const kColorOrange = Color.fromRGBO(0xFC, 0x7C, 0x68, 1);
const kColorPink = Color.fromRGBO(0xE3, 0x3F, 0xB1, 1);
const kColorPurple = Color.fromRGBO(0x66, 0x30, 0xDE, 1);
const kColorPurpleSecondary = Color.fromRGBO(0x59, 0x1D, 0xA9, 1);

const kColorsAllBubbleColors = [
  kColorDarkPurple,
  kColorGray,
  kColorGreen,
  kColorOrange,
  kColorPink,
  kColorPurple,
];
final kGradientScaffoldBackground = LinearGradient(
  colors: [
    kColorPurpleSecondary.withOpacity(0.5),
    kColorDarkPurple.withOpacity(0.5),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
