import 'package:flutter/material.dart';

import '../home/home_view.dart';
import '../shared/widgets/atoms/svg_image.dart';
import '../shared/widgets/atoms/svg_image_data.dart';
import '../shared/widgets/templates/scaffold_background.dart';
import 'splash_controller.dart';

/// Displays the splash screen and load user info
class SplashView extends StatefulWidget {
  static const routeName = '/splash';

  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final _controller = SplashController.of();
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return child!;
      },
      child: const Scaffold(
        body: ScaffoldBackground(
          child: Center(
            child: SvgImage(
              SvgImageData.twitchLogo,
              width: 250.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) async {
      await _controller.load();
      Navigator.of(context).restorablePushNamedAndRemoveUntil(
        HomeView.routeName,
        (route) => false,
      );
    });
  }
}
