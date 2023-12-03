import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/event/event_bloc.dart';
import 'package:ieee_event_app/view/home/core/navigation/home_module.dart';
import 'package:ieee_event_app/view/template/template_splash_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final eventBloc = context.get<EventBloc>();
    return TemplateSplashView<EventBloc, EventState>(
      onError: (s) => s.mapOrNull(),
      onFetch: () {
        eventBloc.add(const EventEvent.fetchEvents());
      },
      onStateChange: (state) {
        state.mapOrNull(
          fetched: (value) =>
              Modular.to.pushReplacementNamed(HomeRoutes.homeRoute),
        );
      },
    );
  }
}
