import 'package:bt_generics_flutter/core/splash/models/splash_model.dart';
import 'package:bt_generics_flutter/modules/splash/controllers/splash_controller.dart';
import 'package:bt_generics_flutter/modules/splash/pages/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

/// Modulo Splash, model requireds.
class SplashModule extends Module {
  final SplashModel model;

  SplashModule(this.model);

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
        model,
        Modular.get<SplashController>(),
      ),
    );

    super.routes(r);
  }
}
