import 'package:flutter/material.dart';

import '../context/game/domain/game.dart';
import '../src/shared/widgets/atoms/images_paths.dart';

const fakeGames = <Game>[
  Game(
    squareImage: AssetImage(ImagesPaths.gameCoverSquareMinecraft),
    largeImage: AssetImage(ImagesPaths.gameCoverLargeFortnite),
    shortName: 'Minecraft',
    longName: 'Minecraft',
    watchers: 2000000,
    followers: 6000000,
  ),
  Game(
    squareImage: AssetImage(ImagesPaths.gameCoverSquareFallGuys),
    largeImage: AssetImage(ImagesPaths.gameCoverLargeFallGuys),
    shortName: 'Fall Guys',
    longName: 'Fall Guys: Ultimate knockout',
    watchers: 6400,
    followers: 4500000,
  ),
  Game(
    squareImage: AssetImage(ImagesPaths.gameCoverSquareCode),
    largeImage: AssetImage(ImagesPaths.gameCoverLargeFortnite),
    shortName: 'Call of Duty',
    longName: 'Call of Duty',
    watchers: 6504,
    followers: 20000,
  ),
  Game(
    squareImage: AssetImage(ImagesPaths.gameCoverSquareLol),
    largeImage: AssetImage(ImagesPaths.gameCoverLargeFallGuys),
    shortName: 'LOL',
    longName: 'Leage of Leyends',
    watchers: 656510,
    followers: 51513544,
  ),
];
