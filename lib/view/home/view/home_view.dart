import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text(LocaleKeys.auth_login.tr()),
      ),
    );
  }
}
