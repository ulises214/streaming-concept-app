import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/tokens.dart';
import 'glass_card.dart';

class DiamondFabNotchedShape extends NotchedShape {
  const DiamondFabNotchedShape();
  @override
  Path getOuterPath(Rect host, Rect? guest) {
    final notchCenter = guest!.width / 2;
    return Path()
      ..lineTo(host.center.dx - notchCenter, host.top)
      ..lineTo(host.center.dx, guest.bottom - kFloatingActionButtonDyOffset)
      ..lineTo(host.center.dx + notchCenter, host.top)
      ..lineTo(host.topRight.dx, host.topRight.dy)
      ..lineTo(host.bottomRight.dx, host.bottomRight.dy)
      ..lineTo(host.bottomLeft.dx, host.bottomLeft.dy)
      ..close();
  }
}

class MainBottomAppBar extends StatelessWidget {
  const MainBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.hardEdge,
      shape: const DiamondFabNotchedShape(),
      notchMargin: 14.0,
      elevation: 0,
      color: Colors.transparent,
      child: GlassCard(
        borderRadius: BorderRadius.vertical(top: kRadiusSmallCard),
        child: SafeArea(
          child: _ItemsList(),
        ),
      ),
    );
  }
}

class _ItemsList extends StatefulWidget {
  const _ItemsList({
    Key? key,
  }) : super(key: key);

  @override
  State<_ItemsList> createState() => _ItemsListState();
}

class _ItemsListState extends State<_ItemsList> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              _NavIcon(
                FontAwesomeIcons.solidHomeSimple,
                onPressed: () => _changeActive(0),
                isActive: _selectedIndex == 0,
              ),
              _NavIcon(
                FontAwesomeIcons.solidMagnifyingGlass,
                onPressed: () => _changeActive(1),
                isActive: _selectedIndex == 1,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              _NavIcon(
                FontAwesomeIcons.solidCompass,
                onPressed: () => _changeActive(2),
                isActive: _selectedIndex == 2,
              ),
              _NavIcon(
                FontAwesomeIcons.solidBell,
                onPressed: () => _changeActive(3),
                isActive: _selectedIndex == 3,
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _changeActive(int index) => setState(() {
        _selectedIndex = index;
      });
}

class _NavIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final VoidCallback onPressed;
  const _NavIcon(
    this.icon, {
    Key? key,
    this.isActive = false,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: SizedBox.square(
        dimension: 56,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: Icon(
            icon,
            key: ValueKey(isActive),
            color: !isActive ? kColorUnselectedItem : null,
            size: isActive ? 26 : 24,
          ),
        ),
      ),
    );
  }
}
