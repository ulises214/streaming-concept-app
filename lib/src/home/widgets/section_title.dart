import 'package:flutter/material.dart';

import '../../shared/theme/tokens.dart';
import '../../shared/widgets/atoms/dot.dart';
import '../../shared/widgets/atoms/styled_text.dart';

class HomeSectionTitle extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget content;
  const HomeSectionTitle({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.content,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: kPaddingPageContent,
          child: _Top(title: title, subtitle: subtitle),
        ),
        const SizedBox(height: 5),
        content,
      ],
    );
  }
}

class _Top extends StatelessWidget {
  final String title;
  final String subtitle;
  const _Top({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Dot.purple(),
            const SizedBox(width: 15.0),
            StyledText(
              title,
              textProperties: const TextProperties(
                type: TextType.h5,
                bold: true,
              ),
            ),
          ],
        ),
        StyledText(
          subtitle,
          textProperties: const TextProperties(
            type: TextType.body1,
            color: kColorUnselectedItem,
            bold: true,
          ),
        ),
      ],
    );
  }
}
