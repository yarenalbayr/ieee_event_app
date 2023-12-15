import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/event/event_bloc.dart';
import 'package:ieee_event_app/logic/models/event_model.dart';
import 'package:ieee_event_app/view/home/view/widgets/event_card_widget.dart';
import 'package:ieee_event_app/view/shared/fail_widget.dart';
import 'package:ieee_event_app/view/shared/loading_widget.dart';

part 'home_view_mixin.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(LocaleKeys.common_home.tr()),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: BlocConsumer<EventBloc, EventState>(
        bloc: _eventBloc,
        listener: (context, state) {
          state.mapOrNull(
            initial: (_) async => _fetchEvents(),
            loading: (_) async => _fetchEvents(),
            updated: (_) async => _fetchEvents(),
            uploaded: (_) async => _fetchEvents(),
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            error: (Exception e) => const FailWidget(),
            orElse: () => const LoadingWidget(),
            fetched: (List<EventModel> events) => Center(
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  final event = events[index];
                  return EventCard(
                    event: event,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
