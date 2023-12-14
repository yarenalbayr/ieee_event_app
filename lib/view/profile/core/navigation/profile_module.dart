import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/logic/blocs/user/user_bloc.dart';
import 'package:ieee_event_app/logic/services/auth/auth_service.dart';
import 'package:ieee_event_app/view/profile/view/edit_profile/edit_profile.dart';
import 'package:ieee_event_app/view/profile/view/profile_view.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

part 'profile_routes.dart';

class ProfileModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<IAuthService>((i) => AuthService()),
        BlocBind.singleton((i) => UserBloc(authService: i.get<IAuthService>())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute<ProfileView>(
          Modular.initialRoute,
          child: (_, __) => const ProfileView(),
        ),
        ChildRoute<EditProfileView>(
          _RawProfileRoutes.editProfile,
          child: (_, __) => const EditProfileView(),
        ),
      ];
}
