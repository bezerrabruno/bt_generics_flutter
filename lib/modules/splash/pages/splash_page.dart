import 'package:bt_generics_flutter/core/splash/models/splash_model.dart';
import 'package:bt_generics_flutter/modules/splash/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  final SplashModel model;
  final SplashController controller;

  const SplashPage(
    this.model,
    this.controller, {
    super.key,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    widget.controller.init(
      widget.model.route,
      widget.model.time!,
      widget.model.action,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = widget.model.theme!.colorScheme;
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: colors.surface,
      body: Center(
        child: SvgPicture.asset(
          widget.model.logo,
          height: size.height / 5,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
