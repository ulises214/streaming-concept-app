import 'package:flutter/material.dart';

class Game {
  final ImageProvider squareImage;
  final ImageProvider largeImage;
  final String shortName;
  final String longName;
  final int watchers;
  final int followers;
  final List<String> tags;
  const Game({
    required this.squareImage,
    required this.largeImage,
    required this.shortName,
    required this.longName,
    required this.watchers,
    required this.followers,
    this.tags = const [],
  });
}
