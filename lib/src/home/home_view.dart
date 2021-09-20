import 'package:flutter/material.dart';

import '../shared/widgets/molecules/main_app_bar.dart';
import '../shared/widgets/molecules/main_bottom_nav_bar.dart';
import '../shared/widgets/molecules/stream_floating_button.dart';
import '../shared/widgets/templates/scaffold_background.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/home';
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      restorationId: 'MainScreen',
      appBar: MainAppBar(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      floatingActionButton: StreamFloatingActionButton(),
      body: ScaffoldBackground(
        child: SafeArea(
          child: Text('Pito'),
        ),
      ),
      bottomNavigationBar: MainBottomAppBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
