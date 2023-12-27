import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/logic/blocs/cubits/filter_cubit.dart';
import 'package:ieee_event_app/view/home/view/widgets/event_card_widget.dart';

class EventList extends StatelessWidget {
  const EventList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<FilterCubit, FilterState>(
        builder: (context, filterState) {
          if (filterState.filteredEvents.isEmpty &&
              !filterState.hasEventsFiltered) {
            // No filter is applied, and no events are found
            return Center(child: Text(LocaleKeys.home_no_events.tr()));
          } else if (filterState.filteredEvents.isEmpty) {
            // Filter is applied, but no matching events are found
            return Center(
              child: Text(
                LocaleKeys.home_no_events.tr(),
              ),
            );
          } else {
            // Show the list of filtered or all events
            return ListView.builder(
              itemCount: filterState.filteredEvents.length,
              itemBuilder: (context, index) {
                final event = filterState.filteredEvents[index];
                return EventCard(event: event);
              },
            );
          }
        },
      ),
    );
  }
}
