part of 'event_bloc.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = _Initial;
  const factory EventState.loading() = _Loading;
  const factory EventState.fetched({required List<EventModel> events}) =
      _Fetched;
  const factory EventState.uploaded({required EventModel events}) = _Uploaded;
  const factory EventState.updated({required EventModel events}) = _Updated;
  const factory EventState.error({required Exception error}) = _Error;
}
