import 'package:flutter/material.dart';

import '../../../../data/main_data.dart';
import '../../../shared/theme/tokens.dart';
import '../../../shared/utils/spaced_list.dart';
import '../../../shared/widgets/atoms/images_paths.dart';
import '../../../shared/widgets/atoms/styled_text.dart';
import '../../../shared/widgets/molecules/character_item.dart';
import '../../../shared/widgets/molecules/large_game_card.dart';
import '../../widgets/section_title.dart';

part 'widgets/characters_list.dart';
part 'widgets/game_list.dart';

class ExplorerHomeTab extends StatelessWidget {
  const ExplorerHomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const SpacedWidgetList(
        [
          TopGamesExplorerTab(),
          GamesListExplorerTab(),
        ],
        direction: Axis.vertical,
        reversed: true,
        space: 20.0,
      ).list(),
    );
  }
}
