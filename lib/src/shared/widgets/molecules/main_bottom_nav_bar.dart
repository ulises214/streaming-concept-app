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
  final int currentPage;
  final void Function(int) onPageChange;
  const MainBottomAppBar(
      {Key? key, required this.currentPage, required this.onPageChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.hardEdge,
      shape: const DiamondFabNotchedShape(),
      notchMargin: 14.0,
      elevation: 0,
      color: Colors.transparent,
      child: GlassCard(
        borderRadius: const BorderRadius.vertical(top: kRadiusSmallCard),
        child: SafeArea(
          child: _ItemsList(
            currentPage: currentPage,
            onPageChange: onPageChange,
          ),
        ),
      ),
    );
  }
}

class _ItemsList extends StatelessWidget {
  final int currentPage;
  final void Function(int) onPageChange;
  const _ItemsList({
    Key? key,
    required this.currentPage,
    required this.onPageChange,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const icons = [
      FontAwesomeIcons.solidHomeSimple,
      FontAwesomeIcons.solidMagnifyingGlass,
      FontAwesomeIcons.solidCompass,
      FontAwesomeIcons.solidBell,
    ];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(icons.length, (i) {
        return _NavIcon(
          icons[i],
          onPressed: () => onPageChange(i),
          isActive: currentPage == i,
        );
      }),
    );
  }
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
            color: !isActive ? kColorBlack : null,
            size: isActive ? 26 : 24,
          ),
        ),
      ),
    );
  }
}
