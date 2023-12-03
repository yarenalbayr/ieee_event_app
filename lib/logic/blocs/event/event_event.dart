part of 'event_bloc.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.fetchEvents() = _EventFetchEvents;
  const factory EventEvent.createEvent({
    required EventModel event,
  }) = _EventCreateEvent;
  const factory EventEvent.updateEvent({
  required EventModel event,
  }) = _EventUpdateEvent;
  const factory EventEvent.deleteEvent({
    required String id,
  }) = _EventDeleteEvent;


}