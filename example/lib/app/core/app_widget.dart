import 'package:app/app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Splash Example',
      theme: AppTheme.lightTheme(),
      routerConfig: Modular.routerConfig,
    ); //added by extension
  }
}
