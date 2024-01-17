import 'package:bt_generics_flutter/core/theme/generic_theme.dart';
import 'package:flutter/material.dart';

class SplashModel {
  final Function? action;
  final String logo;
  final String route;

  ThemeData? theme;
  Duration? time;

  SplashModel({
    this.action,
    required this.logo,
    required this.route,
    this.theme,
    this.time,
  }) {
    _init();
  }

  _init() {
    theme ??= GenericTheme.lightTheme();
    time ??= const Duration(seconds: 2);
  }
}
