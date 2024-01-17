import 'package:app/app/home/page/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (_) => const HomePage(title: 'Home Page'),
    );

    super.routes(r);
  }
}
