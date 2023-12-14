// lib/dashboard/dashboard_module.dart

import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/logic/blocs/event/event_bloc.dart';
import 'package:ieee_event_app/logic/blocs/nav_bar_cubit.dart';
import 'package:ieee_event_app/logic/blocs/user/user_bloc.dart';
import 'package:ieee_event_app/logic/services/auth/auth_service.dart';
import 'package:ieee_event_app/logic/services/event/event_service.dart';
import 'package:ieee_event_app/view/dashboard/view/dashboard_view.dart';
import 'package:ieee_event_app/view/dashboard/view/splash_view.dart';
import 'package:ieee_event_app/view/home/view/home_view.dart';
import 'package:ieee_event_app/view/profile/view/profile_view.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

part 'dashboard_routes.dart';

class DashboardModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NavBarCubit()),
    Bind<IEventService>((i) => const EventService()),
    BlocBind.singleton(
      (i) => EventBloc(
        eventService: i.get<IEventService>(),
      ),
    ),
    Bind<IAuthService>((i) => AuthService()),
        BlocBind.singleton((i) => UserBloc(authService: i.get<IAuthService>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute<SplashView>(
      _RawDashboardRoutes.splash,
      child: (context, args) => const SplashView(),
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
      ],
    ),

    // ... other routes
  ];
}
