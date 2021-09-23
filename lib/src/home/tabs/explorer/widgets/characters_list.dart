part of '../explorer_tab.dart';

const _characters = <Map<String, dynamic>>[
  {
    'image': AssetImage(ImagesPaths.gameCharacterFreeFire),
    'gameName': 'Free Fire',
    'viewers': 18600,
  },
  {
    'image': AssetImage(ImagesPaths.gameCharacterClashRoyale),
    'gameName': 'Clash royale',
    'viewers': 28600,
  },
  {
    'image': AssetImage(ImagesPaths.gameCharacterLol),
    'gameName': 'Lol',
    'viewers': 95442,
  }
];

class TopGamesExplorerTab extends StatelessWidget {
  const TopGamesExplorerTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const height = 230.0;
    final _items = [
      CharacterItem.red(
        _characters[0]['image'] as ImageProvider,
        height: height,
        gameName: _characters[0]['gameName'] as String,
        viewers: _characters[0]['viewers'] as int,
        direction: Direction.right,
      ),
      CharacterItem.blue(
        _characters[1]['image'] as ImageProvider,
        height: height,
        gameName: _characters[1]['gameName'] as String,
        viewers: _characters[1]['viewers'] as int,
        direction: Direction.left,
      ),
      CharacterItem.purple(
        _characters[2]['image'] as ImageProvider,
        height: height,
        gameName: _characters[2]['gameName'] as String,
        viewers: _characters[2]['viewers'] as int,
        direction: Direction.right,
      ),
    ];
    return HomeSectionTitle(
      title: 'Explorar',
      subtitle: 'Top games',
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: height),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          padding: kPaddingPageContent,
          itemBuilder: (_, i) => _items[i],
          separatorBuilder: (_, __) => const SizedBox(width: 20),
          itemCount: _items.length,
        ),
      ),
    );
  }
}
