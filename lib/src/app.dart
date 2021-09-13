import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../dependency_injection/container.dart';
import 'home/home_view.dart';
import 'settings/settings_view.dart';
import 'shared/theme/theme.dart';
import 'splash/splash_controller.dart';
import 'splash/splash_service.dart';
import 'splash/splash_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DependencyContainer.i.getOrPut(() => SplashController(SplashService()));
    return MaterialApp(
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      theme: kStramingAppTheme,

      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.
      onGenerateRoute: (RouteSettings routeSettings) {
        return CupertinoPageRoute<void>(
          settings: routeSettings,
          builder: (BuildContext context) {
            switch (routeSettings.name) {
              case SettingsView.routeName:
                return Container();
              case HomeView.routeName:
                return const HomeView();
              case SplashView.routeName:
              default:
                return const SplashView();
            }
          },
        );
      },
    );
  }
}
