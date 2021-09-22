import 'package:flutter/material.dart';

import '../../theme/tokens.dart';
import '../../utils/number_shorter.dart';
import '../../utils/spaced_list.dart';
import '../atoms/styled_text.dart';

class LiveStreamerCard extends StatelessWidget {
  final ImageProvider image;
  final bool live;
  final int viewers;
  final String name;
  final String gameName;
  final List<String> tags;
  const LiveStreamerCard({
    Key? key,
    required this.image,
    required this.live,
    required this.viewers,
    required this.name,
    required this.gameName,
    this.tags = const [],
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(kRadiusSmallCard),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: () {},
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              minWidth: 200,
              maxWidth: 400,
              maxHeight: 400,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  children: [
                    Image(image: image, fit: BoxFit.cover),
                    Positioned(
                      top: 10.0,
                      left: 10.0,
                      child: _Chip.pink(live ? 'En vivo' : 'En vivo'),
                    ),
                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: _Chip.purple(numberShorter(viewers) + ' Views'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 5),
                      _Title(name: name, gameName: gameName),
                      const SizedBox(height: 5),
                      Row(
                        children: SpacedWidgetList(
                          [for (var tag in tags) _Chip.mini(tag)],
                          direction: Axis.horizontal,
                        ).list(),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  final String text;
  final Color color;
  final bool mini;
  const _Chip({
    Key? key,
    required this.text,
    required this.color,
    this.mini = false,
  }) : super(key: key);
  const _Chip.mini(this.text, {Key? key})
      : color = kColorDarkPurple,
        mini = true,
        super(key: key);
  const _Chip.pink(this.text, {Key? key})
      : color = kColorPink,
        mini = false,
        super(key: key);
  const _Chip.purple(this.text, {Key? key})
      : color = kColorPurpleSecondary,
        mini = false,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Chip(
      elevation: 0,
      backgroundColor: color,
      label: StyledText(
        text,
        textProperties: TextProperties(
          color: Colors.white,
          type: TextType.caption,
          fontSize: mini ? 10.0 : null,
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String name;

  final String gameName;
  const _Title({
    Key? key,
    required this.name,
    required this.gameName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: SpacedWidgetList([
        StyledText(
          name,
          textProperties: const TextProperties(
            color: Colors.white,
            type: TextType.caption,
            bold: true,
          ),
        ),
        const StyledText(
          'Está transmitiendo',
          textProperties: TextProperties(
            type: TextType.caption,
          ),
        ),
        StyledText(
          gameName,
          textProperties: const TextProperties(
            color: Colors.white,
            type: TextType.caption,
            bold: true,
          ),
        ),
      ], direction: Axis.horizontal)
          .list(),
    );
  }
}
