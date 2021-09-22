import 'package:flutter/material.dart';

import '../shared/widgets/atoms/keep_state_widget.dart';
import '../shared/widgets/molecules/main_app_bar.dart';
import '../shared/widgets/molecules/main_bottom_nav_bar.dart';
import '../shared/widgets/molecules/stream_floating_button.dart';
import '../shared/widgets/templates/scaffold_background.dart';
import 'tabs/discover/discover_tab.dart';
import 'tabs/explorer/explorer_tab.dart';
import 'tabs/notifications/notifications_tabs.dart';
import 'tabs/search/search_tab.dart';

class HomeView extends StatefulWidget {
  static const routeName = '/home';
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentPage = 0;
  late final PageController _controller;
  @override
  Widget build(BuildContext context) {
    const tabs = [
      MainHomeTab(),
      SearchHomeTab(),
      ExplorerHomeTab(),
      NotificationsHomeTab(),
    ];
    return Scaffold(
      restorationId: 'HomePage',
      appBar: const MainAppBar(),
      extendBodyBehindAppBar: true,
      extendBody: true,
      floatingActionButton: const StreamFloatingActionButton(),
      body: ScaffoldBackground(
        child: SafeArea(
          bottom: false,
          child: PageView.builder(
            controller: _controller,
            allowImplicitScrolling: false,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, i) => _formatChild(tabs[i]),
          ),
        ),
      ),
      bottomNavigationBar: MainBottomAppBar(
        currentPage: _currentPage,
        onPageChange: _onPageChange,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _currentPage, keepPage: true);
  }

  Widget _formatChild(Widget child) {
    return KeepStateWidget(
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(
          bottom: kBottomNavigationBarHeight * 2,
        ),
        physics: const BouncingScrollPhysics(),
        child: child,
      ),
    );
  }

  void _onPageChange(int page) {
    setState(() {
      _currentPage = page;
    });
    _controller.animateToPage(
      page,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }
}
