import 'package:bt_generics_flutter/modules/splash/controllers/splash_controller.dart';
import 'package:bt_generics_flutter/modules/splash/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// Modulo Splash, logo and route requireds.
class SplashModule extends Module {
  final Color? color;
  final String logo;

  final String route;
  final Duration? time;

  final Function? action;

  SplashModule({
    this.color,
    required this.logo,
    required this.route,
    this.time,
    this.action,
  });

  @override
  void binds(Injector i) {
    i.addLazySingleton(SplashController.new);

    super.binds(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (_) => SplashPage(
        Modular.get<SplashController>(),
        logo: logo,
        route: route,
        color: color,
        time: time,
        action: action,
      ),
    );

    super.routes(r);
  }
}
