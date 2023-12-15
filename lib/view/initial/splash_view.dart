import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/constants/index.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppIcons.ieeeLogoBlack,
        ),
      ),
    );
  }
}
