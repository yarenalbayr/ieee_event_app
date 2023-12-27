// lib/dashboard/dashboard_module.dart

import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/logic/blocs/cubits/filter_cubit.dart';
import 'package:ieee_event_app/logic/blocs/cubits/localization_cubit.dart';
import 'package:ieee_event_app/logic/blocs/cubits/nav_bar_cubit.dart';
import 'package:ieee_event_app/logic/blocs/event/event_bloc.dart';
import 'package:ieee_event_app/logic/services/event/event_service.dart';
import 'package:ieee_event_app/view/dashboard/view/dashboard_splash_view.dart';
import 'package:ieee_event_app/view/dashboard/view/dashboard_view.dart';
import 'package:ieee_event_app/view/home/view/home_view.dart';
import 'package:ieee_event_app/view/profile/view/languages_view.dart';
import 'package:ieee_event_app/view/profile/view/profile_view.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

part 'dashboard_routes.dart';

class DashboardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NavBarCubit()),
    Bind.lazySingleton((i) => FilterCubit()),
    Bind.lazySingleton(
      (i) => LocalizationCubit(),
    ),
    Bind<IEventService>((i) => const EventService()),
    BlocBind.singleton(
      (i) => EventBloc(
        eventService: i.get<IEventService>(),
      ),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<DashboardSplashView>(
      _RawDashboardRoutes.splash,
      child: (context, args) => const DashboardSplashView(),
    ),
    ChildRoute<DashboardView>(
      _RawDashboardRoutes.main,
      child: (_, __) => const DashboardView(),
      children: [
        ChildRoute<HomeView>(
          _RawDashboardRoutes.home,
          child: (context, args) => const HomeView(),
        ),
        ChildRoute<ProfileView>(
          _RawDashboardRoutes.profile,
          child: (context, args) => const ProfileView(),
        ),
        ChildRoute<LanguagesView>(
          _RawDashboardRoutes.language,
          child: (context, args) => const LanguagesView(),
        ),
      ],
    ),

    // ... other routes
  ];
}
