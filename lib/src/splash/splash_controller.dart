import 'package:flutter/material.dart';

import '../../dependency_injection/container.dart';
import 'splash_service.dart';

class SplashController extends ChangeNotifier {
  final SplashService _service;

  SplashController(this._service);

  @override
  void dispose() {
    super.dispose();
    DependencyContainer.i.delete<SplashController>();
  }

  Future<void> load() async {
    await Future.delayed(const Duration(seconds: 2));
    await _service.loadUser();
  }

  static SplashController of() => DependencyContainer.i.get<SplashController>();
}
