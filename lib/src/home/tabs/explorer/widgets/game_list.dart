part of '../explorer_tab.dart';

class GamesListExplorerTab extends StatelessWidget {
  const GamesListExplorerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: kPaddingPageContent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: SpacedWidgetList(
            [
              const _Tabs(),
              const StyledText(
                'Todas las categorias',
                textProperties:
                    TextProperties(type: TextType.caption, color: Colors.white),
              ),
              ...List.generate(
                  fakeGames.length, (i) => LargeGameCard(game: fakeGames[i]))
            ],
            direction: Axis.vertical,
            space: 20.0,
          ).list(),
        ),
      ),
    );
  }
}

class _Tabs extends StatelessWidget {
  const _Tabs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(
      indicatorColor: kColorPurple,
      isScrollable: true,
      tabs: [
        Tab(text: 'Categorias'),
        Tab(text: 'Canales en vivo'),
      ],
    );
  }
}
