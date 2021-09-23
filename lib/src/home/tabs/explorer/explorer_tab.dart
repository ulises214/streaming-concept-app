import 'package:flutter/material.dart';

import '../../../shared/theme/tokens.dart';
import '../../../shared/utils/spaced_list.dart';
import '../../../shared/widgets/atoms/images_paths.dart';
import '../../../shared/widgets/molecules/character_item.dart';
import '../../widgets/section_title.dart';

part 'widgets/characters_list.dart';

class ExplorerHomeTab extends StatelessWidget {
  const ExplorerHomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const SpacedWidgetList(
        [
          TopGamesExplorerTab(),
        ],
        direction: Axis.vertical,
        reversed: true,
        space: 20.0,
      ).list(),
    );
  }
}
