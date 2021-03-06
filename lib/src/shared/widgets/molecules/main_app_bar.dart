import 'dart:ui';

import 'package:flutter/material.dart';

import '../atoms/white_devider.dart';
import 'coins_indicator.dart';
import 'glass_card.dart';
import 'notifiaction_indicator.dart';
import 'user_app_bar_title.dart';
import 'user_avatar.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({
    Key? key,
  }) : super(key: key);
  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight * 2);

  @override
  State<StatefulWidget> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return GlassCard.bigCard(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SafeArea(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  UserAvatar(size: 20),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: UserAppBarTitle(),
                    ),
                  ),
                  NotificationIndicator(),
                  CoinsIndicator(),
                ],
              ),
            ),
          ),
          const WhiteDevider()
        ],
      ),
    );
  }
}
