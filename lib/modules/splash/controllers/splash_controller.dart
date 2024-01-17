import 'package:flutter_modular/flutter_modular.dart';

class SplashController {
  void init(
    String route,
    Duration time,
    Function? action,
  ) async {
    await Future.delayed(time);

    if (action != null) {
      await action();
    }

    Modular.to.navigate(route);
  }
}
