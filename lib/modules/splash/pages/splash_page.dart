import 'package:bt_generics_flutter/modules/splash/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  final SplashController controller;

  final Color? color;
  final String logo;

  final String route;
  final Duration? time;

  final Function? action;

  const SplashPage(
    this.controller, {
    super.key,
    required this.logo,
    required this.route,
    this.color,
    this.action,
    this.time,
  });

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    widget.controller.init(
      widget.route,
      widget.time,
      widget.action,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: widget.color ?? Colors.black54,
      body: Center(
        child: SvgPicture.asset(
          widget.logo,
          height: size.height / 5,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
