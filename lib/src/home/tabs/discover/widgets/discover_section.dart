part of '../discover_tab.dart';

const _icons = [
  SvgIconData.categoryAction,
  SvgIconData.categorySport,
  SvgIconData.categoryRpg,
  SvgIconData.categoryMusic,
];
const _texts = ['Acción', 'Sports', 'RPG', 'Música'];

class DiscoverMainSection extends StatelessWidget {
  const DiscoverMainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingPageContent,
      child: Column(
        children: const [
          _DiscoverTitle(),
          SizedBox(height: 5),
          _CategoryList()
        ],
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final SvgIconData icon;
  final String text;
  const _CategoryItem({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: SizedBox.square(
          dimension: 65,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgIcon(icon, size: 24),
              const SizedBox(height: 5),
              StyledText(
                text,
                textProperties: const TextProperties(
                  type: TextType.caption,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      backgroundOppacity: 0.3,
      borderRadius: const BorderRadius.all(kRadiusSmallCard),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                _icons.length,
                (i) => _CategoryItem(icon: _icons[i], text: _texts[i]),
              ),
            ),
            const SizedBox(height: 5),
            const WhiteDevider(),
          ],
        ),
      ),
    );
  }
}

class _DiscoverTitle extends StatelessWidget {
  const _DiscoverTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Dot.purple(),
            SizedBox(width: 15.0),
            StyledText(
              'Descubrir',
              textProperties: TextProperties(
                type: TextType.h5,
                bold: true,
              ),
            ),
          ],
        ),
        const StyledText(
          'Siguiendo',
          textProperties: TextProperties(
            type: TextType.body1,
            color: kColorUnselectedItem,
            bold: true,
          ),
        ),
      ],
    );
  }
}
