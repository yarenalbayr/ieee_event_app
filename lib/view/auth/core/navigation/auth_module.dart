import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/logic/blocs/auth/auth_bloc.dart';
import 'package:ieee_event_app/logic/blocs/event/event_bloc.dart';
import 'package:ieee_event_app/logic/blocs/user/user_bloc.dart';
import 'package:ieee_event_app/logic/services/auth/auth_service.dart';
import 'package:ieee_event_app/logic/services/event/event_service.dart';
import 'package:ieee_event_app/view/auth/view/login/login_view.dart';
import 'package:ieee_event_app/view/auth/view/sign_up/sign_up_view.dart';
import 'package:ieee_event_app/view/initial/splash_view.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

part 'auth_routes.dart';

final class AuthModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<IAuthService>((i) => AuthService()),
        BlocBind.singleton(
          (i) => AuthBloc(
            authService: i.get<IAuthService>(),
            userBloc: i.get<UserBloc>(),
          ),
        ),
        Bind<IEventService>((i) => const EventService()),
        Bind.singleton<EventBloc>(
          (i) => EventBloc(
            eventService: i.get<IEventService>(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute<LoginView>(
          _RawAuthRoutes.login,
          child: (context, args) => const LoginView(),
        ),
        ChildRoute<SignUpView>(
          _RawAuthRoutes.signUp,
          child: (context, args) => const SignUpView(),
        ),
        ChildRoute<LoginView>(
          _RawAuthRoutes.splash,
          child: (context, args) => const SplashView(),
        ),
      ];
}
