import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme/tokens.dart';
import '../../utils/number_shorter.dart';
import '../atoms/images_paths.dart';
import '../atoms/styled_text.dart';

class CharacterItem extends StatelessWidget {
  final ImageProvider backImage;
  final ImageProvider frontImage;
  final ImageProvider characterImage;
  final String gameName;

  final int viewers;
  final Direction direction;
  final double height;
  const CharacterItem({
    Key? key,
    required this.backImage,
    required this.frontImage,
    required this.characterImage,
    required this.gameName,
    required this.viewers,
    required this.direction,
    required this.height,
  }) : super(key: key);
  const CharacterItem.blue(this.characterImage,
      {Key? key,
      required this.gameName,
      required this.viewers,
      required this.height,
      required this.direction})
      : backImage = const AssetImage(ImagesPaths.flameBlueBack),
        frontImage = const AssetImage(ImagesPaths.flameBlueFront),
        super(key: key);
  const CharacterItem.purple(this.characterImage,
      {Key? key,
      required this.gameName,
      required this.viewers,
      required this.height,
      required this.direction})
      : backImage = const AssetImage(ImagesPaths.flamePurpleBack),
        frontImage = const AssetImage(ImagesPaths.flamePurpleFront),
        super(key: key);
  const CharacterItem.red(this.characterImage,
      {Key? key,
      required this.gameName,
      required this.viewers,
      required this.height,
      required this.direction})
      : backImage = const AssetImage(ImagesPaths.flameRedBack),
        frontImage = const AssetImage(ImagesPaths.flameRedFront),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    const aspectRatio = 2 / 3;
    final width = height * aspectRatio;
    final imageSize = height;
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        borderRadius: const BorderRadius.all(kRadiusSmallCard),
        onTap: () {},
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              _Background(flames: backImage, direction: direction),
              _Image(imageSize: imageSize, characterImage: characterImage),
              _ForeGround(frontImage: frontImage),
              _Title(
                height: height,
                width: width,
                gameName: gameName,
                viewers: viewers,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Direction {
  left,
  right,
}

class _Background extends StatelessWidget {
  final ImageProvider flames;
  final Direction direction;
  const _Background({
    Key? key,
    required this.flames,
    required this.direction,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _PathCliper(direction),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image(
              image: flames,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                color: Colors.white.withOpacity(0.10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ForeGround extends StatelessWidget {
  final ImageProvider<Object> frontImage;

  const _ForeGround({
    Key? key,
    required this.frontImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: ColorFiltered(
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstIn),
        child: Image(image: frontImage, fit: BoxFit.cover),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  final double imageSize;

  final ImageProvider<Object> characterImage;
  const _Image({
    Key? key,
    required this.imageSize,
    required this.characterImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(imageSize * 0.1, 0),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: imageSize,
          maxHeight: imageSize,
          minWidth: imageSize,
          minHeight: imageSize,
        ),
        child: Image(
          image: characterImage,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class _PathCliper extends CustomClipper<Path> {
  final Direction direction;
  const _PathCliper(this.direction);
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    const radius = kRadiusSmallCard;
    final path = Path()
      ..moveTo(width, height * 0.9)
      ..arcToPoint(Offset(width * 0.9, height), radius: radius)
      ..lineTo(width * 0.1, height)
      ..arcToPoint(Offset(0, height * 0.9), radius: radius);
    if (direction == Direction.right) {
      path
        ..lineTo(0, height * 0.35)
        ..arcToPoint(Offset(width * 0.1, height * 0.25), radius: radius)
        ..lineTo(width * 0.85, height * 0.1)
        ..arcToPoint(Offset(width, height * 0.2), radius: radius);
    } else {
      path
        ..lineTo(0, height * 0.2)
        ..arcToPoint(Offset(width * 0.15, height * 0.1), radius: radius)
        ..lineTo(width * 0.9, height * 0.25)
        ..arcToPoint(Offset(width, height * 0.35), radius: radius);
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(_PathCliper oldClipper) => true;
  //oldClipper.direction != direction;
}

class _Title extends StatelessWidget {
  final double height;

  final double width;
  final String gameName;
  final int viewers;
  const _Title({
    Key? key,
    required this.height,
    required this.width,
    required this.gameName,
    required this.viewers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: height * 0.05,
      left: width * 0.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StyledText(
            gameName,
            textProperties: const TextProperties(
                color: Colors.white, bold: true, type: TextType.body2),
          ),
          StyledText(
            numberShorter(viewers),
            textProperties: const TextProperties(
                color: Colors.white, type: TextType.caption),
          ),
        ],
      ),
    );
  }
}
