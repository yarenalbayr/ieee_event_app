// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/logic/blocs/event/event_bloc.dart';
import 'package:ieee_event_app/logic/blocs/user/user_bloc.dart';
import 'package:ieee_event_app/logic/services/auth/auth_service.dart';
import 'package:ieee_event_app/logic/services/event/event_service.dart';
import 'package:ieee_event_app/view/auth/core/navigation/auth_module.dart';
import 'package:ieee_event_app/view/dashboard/core/dashboard_module.dart';
import 'package:ieee_event_app/view/initial/splash_view.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class AppModules extends Module {
  @override
  List<Bind> get binds {
    return [
      Bind<IAuthService>((i) => AuthService()),
      BlocBind.singleton((i) => UserBloc(authService: i.get<IAuthService>())),
      Bind<IEventService>((i) => const EventService()),
      BlocBind.singleton(
        (i) => EventBloc(
          eventService: i.get<IEventService>(),
        ),
      ),
    ];
  }

  @override
  List<ModularRoute> get routes {
    return [
      ChildRoute<SplashView>(
        Modular.initialRoute,
        child: (context, args) => const SplashView(),
      ),
      ModuleRoute(
        AuthRoutes.moduleName,
        module: AuthModule(),
      ),
      ModuleRoute(
        DashboardRoutes.moduleName,
        module: DashboardModule(),
      ),
    ];
  }
}

class AppRoutes {
  static const String splash = '/';
}
