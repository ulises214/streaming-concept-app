import 'package:flutter/material.dart';

import '../../../../data/main_data.dart';
import '../../../shared/theme/tokens.dart';
import '../../../shared/utils/spaced_list.dart';
import '../../../shared/widgets/atoms/images_paths.dart';
import '../../../shared/widgets/atoms/styled_text.dart';
import '../../../shared/widgets/atoms/svg_icon.dart';
import '../../../shared/widgets/atoms/white_devider.dart';
import '../../../shared/widgets/molecules/glass_card.dart';
import '../../../shared/widgets/molecules/live_streamer_card.dart';
import '../../../shared/widgets/molecules/short_game_item.dart';
import '../../widgets/section_title.dart';

part 'widgets/discover_section.dart';
part 'widgets/live_channels.dart';
part 'widgets/recommended_games.dart';

class MainHomeTab extends StatelessWidget {
  const MainHomeTab({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const SpacedWidgetList(
        [
          DiscoverMainSection(),
          DiscoverLiveChannelsSection(),
          DiscoverRecoomendedGames(),
        ],
        direction: Axis.vertical,
        reversed: true,
        space: 20.0,
      ).list(),
    );
  }
}
