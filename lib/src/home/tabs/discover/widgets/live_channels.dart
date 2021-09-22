part of '../discover_tab.dart';

class DiscoverLiveChannelsSection extends StatelessWidget {
  const DiscoverLiveChannelsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPaddingPageContent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          _LiveTitle(),
          SizedBox(height: 5),
          LiveStreamerCard(
            image: AssetImage(ImagesPaths.streamerAuronplay),
            gameName: 'Among us',
            live: true,
            name: 'Auronplay',
            viewers: 13000,
            tags: ['Acción', 'Plataformas', 'Deportes'],
          ),
        ],
      ),
    );
  }
}

class _LiveTitle extends StatelessWidget {
  const _LiveTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        StyledText(
          'Canales en vivo',
          textProperties: TextProperties(type: TextType.h6),
        ),
      ],
    );
  }
}
