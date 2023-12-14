import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/configurations/app_init.dart';
import 'package:ieee_event_app/core/configurations/localization/localization.dart';
import 'package:ieee_event_app/core/constants/theme/theme.dart';
import 'package:ieee_event_app/core/navigation/app_modules.dart';
import 'package:ieee_event_app/view/auth/view/auth_state_listener.dart';
import 'package:ieee_event_app/view/dashboard/core/dashboard_module.dart';

Future<void> main() async {
  await ApplicationInit.init();
  runApp(
    ModularApp(
      module: AppModules(),
      child: AppLocalization(
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(DashboardRoutes.splash);
    return MaterialApp.router(
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
      locale: context.locale,
      theme: darkTheme,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      builder: (context, child) {
        return AuthStateListenerWrapper(
          child: child ?? const SizedBox.shrink(),
        );
      },
    );
  }
}
