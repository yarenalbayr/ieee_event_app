// FilterCubit will be used to manage the filter state
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_event_app/core/enums/comitee_enum.dart';
import 'package:ieee_event_app/logic/models/event_model.dart';

class FilterCubit extends Cubit<FilterState> {
  FilterCubit() : super(FilterState());

  void setAllEvents(List<EventModel> events) {
    if (!isClosed) {
       emit(FilterState(allEvents: events, filteredEvents: events));
    }
   
  }

  void filterByCommittee(ECommittees? committee) {
    if (!isClosed) {
      if (committee == null) {
        emit(
          FilterState(
            allEvents: state.allEvents,
            filteredEvents: state.allEvents,
          ),
        );
      } else {
        final filteredList = state.allEvents
            .where((event) => event.committee == committee)
            .toList();
        emit(
          FilterState(
            selectedCommittee: committee,
            allEvents: state.allEvents,
            filteredEvents: filteredList,
            hasEventsFiltered: true,
          ),
        );
      }
    }
  }

  void clearFilter() {
    if (!isClosed) {
      emit(
        FilterState(
          allEvents: state.allEvents,
          filteredEvents: state.allEvents,
        ),
      );
    }
  }
}

class FilterState {
  FilterState({
    this.selectedCommittee,
    this.allEvents = const [],
    this.filteredEvents = const [],
    this.hasEventsFiltered = false,
  });
  final ECommittees? selectedCommittee;
  final List<EventModel> allEvents;
  final List<EventModel> filteredEvents;
  final bool hasEventsFiltered;
}
