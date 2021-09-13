import 'package:flutter/material.dart';

import '../shared/widgets/molecules/main_app_bar.dart';
import '../shared/widgets/templates/scaffold_background.dart';

class HomeView extends StatelessWidget {
  static const routeName = '/home';
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: ScaffoldBackground(
        child: SafeArea(
          child: Text('Pito'),
        ),
      ),
    );
  }
}
