part of '../discover_tab.dart';

class DiscoverRecoomendedGames extends StatelessWidget {
  const DiscoverRecoomendedGames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(padding: kPaddingPageContent, child: _RecommendedTitle()),
        const SizedBox(height: 5),
        ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 160.0),
          child: ListView.separated(
            padding: kPaddingPageContent,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) => ShortGameItem(game: fakeGames[i]),
            separatorBuilder: (_, __) => const SizedBox(width: 30.0),
            itemCount: fakeGames.length,
          ),
        ),
      ],
    );
  }
}

class _RecommendedTitle extends StatelessWidget {
  const _RecommendedTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        StyledText(
          'Juegos recomendados',
          textProperties: TextProperties(type: TextType.h6),
        ),
      ],
    );
  }
}
