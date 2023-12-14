import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/logic/blocs/event/event_bloc.dart';
import 'package:ieee_event_app/logic/services/event/event_service.dart';
import 'package:ieee_event_app/view/home/view/home_view.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

part 'home_routes.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<IEventService>((i) => const EventService()),
        BlocBind.singleton(
          (i) => EventBloc(
            eventService: i.get<IEventService>(),
          ),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute<HomeView>(
        Modular.initialRoute,
          child: (context, args) => const HomeView(),
        ),
      ];
}
