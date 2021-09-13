import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import '../../theme/tokens.dart';
import '../atoms/dot.dart';
import '../atoms/images_paths.dart';

class UserAvatar extends StatelessWidget {
  static const defaultImage = AssetImage(ImagesPaths.fakeProfile);
  final double size;
  const UserAvatar({
    Key? key,
    this.size = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const online = true;
    return FutureBuilder(
        initialData: kColorPurpleSecondary,
        future: _getBorderColor(defaultImage),
        builder: (context, AsyncSnapshot<Color> snapshot) {
          final borderColor = snapshot.data;
          return Stack(
            alignment: Alignment.topRight,
            children: [
              CircleAvatar(
                radius: size,
                backgroundColor: borderColor,
                child: CircleAvatar(
                  backgroundImage: defaultImage,
                  radius: size - 2,
                ),
              ),
              if (online) const Dot.green(),
            ],
          );
        });
  }

  Future<Color> _getBorderColor(ImageProvider image) async {
    final lightVibrantColor =
        (await PaletteGenerator.fromImageProvider(image)).lightVibrantColor;
    if (lightVibrantColor != null) return lightVibrantColor.color;
    final lightMutedColor =
        (await PaletteGenerator.fromImageProvider(image)).lightMutedColor;
    if (lightMutedColor != null) return lightMutedColor.color;
    return kColorPurpleSecondary;
  }
}
