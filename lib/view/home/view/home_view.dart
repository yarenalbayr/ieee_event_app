import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/event/event_bloc.dart';
import 'package:ieee_event_app/logic/models/event_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<EventBloc, EventState>(
        bloc: context.get<EventBloc>(),
        listener: (context, state) {
        },
        builder: (context, state) {
          return state.when(
            initial: () => const Boo(boo: 'initial'),
            loading: () => const Boo(boo: 'loading'),
            uploaded: (EventModel event) => const Boo(),
            updated: (EventModel event) => const Boo(),
            error: (Exception e) => const Boo(),
            fetched: (List<EventModel> events) => Center(
              child: Text(events.first.id),
            ),
          );
        },
      ),
    );
  }
}

class Boo extends StatelessWidget {
  const Boo({super.key, this.boo});
  final String? boo;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(boo ?? 'BOOO'));
  }
}
