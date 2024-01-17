// ignore_for_file: avoid_print

import 'package:app/app/home/home_module.dart';
import 'package:bt_generics_flutter/main.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(
      '/',
      module: SplashModule(
        SplashModel(
          logo: 'assets/logo-primary.svg',
          route: '/home/',
          action: () => print('Logicando'),
        ),
      ),
    );

    r.module('/home/', module: HomeModule());

    super.routes(r);
  }
}
