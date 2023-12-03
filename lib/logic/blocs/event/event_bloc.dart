import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_event_app/logic/models/event_model.dart';
import 'package:ieee_event_app/logic/services/event/event_service.dart';

part 'event_bloc.freezed.dart';
part 'event_event.dart';
part 'event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  EventBloc({
    required IEventService eventService,
  })  : _eventService = eventService,
        super(const EventState.initial()) {
    on<_EventFetchEvents>(_onEventFetchEvents);
    on<_EventCreateEvent>(_onEventCreateEvent);
    on<_EventUpdateEvent>(_onEventUpdateEvent);
    on<_EventDeleteEvent>(_onEventDeleteEvent);
  }

  final IEventService _eventService;

  Future<FutureOr<void>> _onEventFetchEvents(
    _EventFetchEvents event,
    Emitter<EventState> emit,
  ) async {
    emit(const EventState.loading());
    final response =await  _eventService.fetchEvents();
    response.fold(
      (l) => emit(EventState.error(error: l)),
      (r) => emit(EventState.fetched(events: r)),
    );
  }

  FutureOr<void> _onEventCreateEvent(
    _EventCreateEvent event,
    Emitter<EventState> emit,
  ) {}

  FutureOr<void> _onEventUpdateEvent(
    _EventUpdateEvent event,
    Emitter<EventState> emit,
  ) {}

  FutureOr<void> _onEventDeleteEvent(
    _EventDeleteEvent event,
    Emitter<EventState> emit,
  ) {}
}
