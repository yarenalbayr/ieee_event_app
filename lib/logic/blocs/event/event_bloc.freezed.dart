// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEvents,
    required TResult Function(EventModel event) createEvent,
    required TResult Function(EventModel event) updateEvent,
    required TResult Function(String id) deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEvents,
    TResult? Function(EventModel event)? createEvent,
    TResult? Function(EventModel event)? updateEvent,
    TResult? Function(String id)? deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEvents,
    TResult Function(EventModel event)? createEvent,
    TResult Function(EventModel event)? updateEvent,
    TResult Function(String id)? deleteEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventFetchEvents value) fetchEvents,
    required TResult Function(_EventCreateEvent value) createEvent,
    required TResult Function(_EventUpdateEvent value) updateEvent,
    required TResult Function(_EventDeleteEvent value) deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventFetchEvents value)? fetchEvents,
    TResult? Function(_EventCreateEvent value)? createEvent,
    TResult? Function(_EventUpdateEvent value)? updateEvent,
    TResult? Function(_EventDeleteEvent value)? deleteEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventFetchEvents value)? fetchEvents,
    TResult Function(_EventCreateEvent value)? createEvent,
    TResult Function(_EventUpdateEvent value)? updateEvent,
    TResult Function(_EventDeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEventCopyWith<$Res> {
  factory $EventEventCopyWith(
          EventEvent value, $Res Function(EventEvent) then) =
      _$EventEventCopyWithImpl<$Res, EventEvent>;
}

/// @nodoc
class _$EventEventCopyWithImpl<$Res, $Val extends EventEvent>
    implements $EventEventCopyWith<$Res> {
  _$EventEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventFetchEventsCopyWith<$Res> {
  factory _$$_EventFetchEventsCopyWith(
          _$_EventFetchEvents value, $Res Function(_$_EventFetchEvents) then) =
      __$$_EventFetchEventsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventFetchEventsCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$_EventFetchEvents>
    implements _$$_EventFetchEventsCopyWith<$Res> {
  __$$_EventFetchEventsCopyWithImpl(
      _$_EventFetchEvents _value, $Res Function(_$_EventFetchEvents) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventFetchEvents implements _EventFetchEvents {
  const _$_EventFetchEvents();

  @override
  String toString() {
    return 'EventEvent.fetchEvents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventFetchEvents);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEvents,
    required TResult Function(EventModel event) createEvent,
    required TResult Function(EventModel event) updateEvent,
    required TResult Function(String id) deleteEvent,
  }) {
    return fetchEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEvents,
    TResult? Function(EventModel event)? createEvent,
    TResult? Function(EventModel event)? updateEvent,
    TResult? Function(String id)? deleteEvent,
  }) {
    return fetchEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEvents,
    TResult Function(EventModel event)? createEvent,
    TResult Function(EventModel event)? updateEvent,
    TResult Function(String id)? deleteEvent,
    required TResult orElse(),
  }) {
    if (fetchEvents != null) {
      return fetchEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventFetchEvents value) fetchEvents,
    required TResult Function(_EventCreateEvent value) createEvent,
    required TResult Function(_EventUpdateEvent value) updateEvent,
    required TResult Function(_EventDeleteEvent value) deleteEvent,
  }) {
    return fetchEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventFetchEvents value)? fetchEvents,
    TResult? Function(_EventCreateEvent value)? createEvent,
    TResult? Function(_EventUpdateEvent value)? updateEvent,
    TResult? Function(_EventDeleteEvent value)? deleteEvent,
  }) {
    return fetchEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventFetchEvents value)? fetchEvents,
    TResult Function(_EventCreateEvent value)? createEvent,
    TResult Function(_EventUpdateEvent value)? updateEvent,
    TResult Function(_EventDeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (fetchEvents != null) {
      return fetchEvents(this);
    }
    return orElse();
  }
}

abstract class _EventFetchEvents implements EventEvent {
  const factory _EventFetchEvents() = _$_EventFetchEvents;
}

/// @nodoc
abstract class _$$_EventCreateEventCopyWith<$Res> {
  factory _$$_EventCreateEventCopyWith(
          _$_EventCreateEvent value, $Res Function(_$_EventCreateEvent) then) =
      __$$_EventCreateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel event});
}

/// @nodoc
class __$$_EventCreateEventCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$_EventCreateEvent>
    implements _$$_EventCreateEventCopyWith<$Res> {
  __$$_EventCreateEventCopyWithImpl(
      _$_EventCreateEvent _value, $Res Function(_$_EventCreateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_EventCreateEvent(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
    ));
  }
}

/// @nodoc

class _$_EventCreateEvent implements _EventCreateEvent {
  const _$_EventCreateEvent({required this.event});

  @override
  final EventModel event;

  @override
  String toString() {
    return 'EventEvent.createEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventCreateEvent &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventCreateEventCopyWith<_$_EventCreateEvent> get copyWith =>
      __$$_EventCreateEventCopyWithImpl<_$_EventCreateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEvents,
    required TResult Function(EventModel event) createEvent,
    required TResult Function(EventModel event) updateEvent,
    required TResult Function(String id) deleteEvent,
  }) {
    return createEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEvents,
    TResult? Function(EventModel event)? createEvent,
    TResult? Function(EventModel event)? updateEvent,
    TResult? Function(String id)? deleteEvent,
  }) {
    return createEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEvents,
    TResult Function(EventModel event)? createEvent,
    TResult Function(EventModel event)? updateEvent,
    TResult Function(String id)? deleteEvent,
    required TResult orElse(),
  }) {
    if (createEvent != null) {
      return createEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventFetchEvents value) fetchEvents,
    required TResult Function(_EventCreateEvent value) createEvent,
    required TResult Function(_EventUpdateEvent value) updateEvent,
    required TResult Function(_EventDeleteEvent value) deleteEvent,
  }) {
    return createEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventFetchEvents value)? fetchEvents,
    TResult? Function(_EventCreateEvent value)? createEvent,
    TResult? Function(_EventUpdateEvent value)? updateEvent,
    TResult? Function(_EventDeleteEvent value)? deleteEvent,
  }) {
    return createEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventFetchEvents value)? fetchEvents,
    TResult Function(_EventCreateEvent value)? createEvent,
    TResult Function(_EventUpdateEvent value)? updateEvent,
    TResult Function(_EventDeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (createEvent != null) {
      return createEvent(this);
    }
    return orElse();
  }
}

abstract class _EventCreateEvent implements EventEvent {
  const factory _EventCreateEvent({required final EventModel event}) =
      _$_EventCreateEvent;

  EventModel get event;
  @JsonKey(ignore: true)
  _$$_EventCreateEventCopyWith<_$_EventCreateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventUpdateEventCopyWith<$Res> {
  factory _$$_EventUpdateEventCopyWith(
          _$_EventUpdateEvent value, $Res Function(_$_EventUpdateEvent) then) =
      __$$_EventUpdateEventCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel event});
}

/// @nodoc
class __$$_EventUpdateEventCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$_EventUpdateEvent>
    implements _$$_EventUpdateEventCopyWith<$Res> {
  __$$_EventUpdateEventCopyWithImpl(
      _$_EventUpdateEvent _value, $Res Function(_$_EventUpdateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
  }) {
    return _then(_$_EventUpdateEvent(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
    ));
  }
}

/// @nodoc

class _$_EventUpdateEvent implements _EventUpdateEvent {
  const _$_EventUpdateEvent({required this.event});

  @override
  final EventModel event;

  @override
  String toString() {
    return 'EventEvent.updateEvent(event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventUpdateEvent &&
            (identical(other.event, event) || other.event == event));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventUpdateEventCopyWith<_$_EventUpdateEvent> get copyWith =>
      __$$_EventUpdateEventCopyWithImpl<_$_EventUpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEvents,
    required TResult Function(EventModel event) createEvent,
    required TResult Function(EventModel event) updateEvent,
    required TResult Function(String id) deleteEvent,
  }) {
    return updateEvent(event);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEvents,
    TResult? Function(EventModel event)? createEvent,
    TResult? Function(EventModel event)? updateEvent,
    TResult? Function(String id)? deleteEvent,
  }) {
    return updateEvent?.call(event);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEvents,
    TResult Function(EventModel event)? createEvent,
    TResult Function(EventModel event)? updateEvent,
    TResult Function(String id)? deleteEvent,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventFetchEvents value) fetchEvents,
    required TResult Function(_EventCreateEvent value) createEvent,
    required TResult Function(_EventUpdateEvent value) updateEvent,
    required TResult Function(_EventDeleteEvent value) deleteEvent,
  }) {
    return updateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventFetchEvents value)? fetchEvents,
    TResult? Function(_EventCreateEvent value)? createEvent,
    TResult? Function(_EventUpdateEvent value)? updateEvent,
    TResult? Function(_EventDeleteEvent value)? deleteEvent,
  }) {
    return updateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventFetchEvents value)? fetchEvents,
    TResult Function(_EventCreateEvent value)? createEvent,
    TResult Function(_EventUpdateEvent value)? updateEvent,
    TResult Function(_EventDeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (updateEvent != null) {
      return updateEvent(this);
    }
    return orElse();
  }
}

abstract class _EventUpdateEvent implements EventEvent {
  const factory _EventUpdateEvent({required final EventModel event}) =
      _$_EventUpdateEvent;

  EventModel get event;
  @JsonKey(ignore: true)
  _$$_EventUpdateEventCopyWith<_$_EventUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventDeleteEventCopyWith<$Res> {
  factory _$$_EventDeleteEventCopyWith(
          _$_EventDeleteEvent value, $Res Function(_$_EventDeleteEvent) then) =
      __$$_EventDeleteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_EventDeleteEventCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res, _$_EventDeleteEvent>
    implements _$$_EventDeleteEventCopyWith<$Res> {
  __$$_EventDeleteEventCopyWithImpl(
      _$_EventDeleteEvent _value, $Res Function(_$_EventDeleteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_EventDeleteEvent(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventDeleteEvent implements _EventDeleteEvent {
  const _$_EventDeleteEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'EventEvent.deleteEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDeleteEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDeleteEventCopyWith<_$_EventDeleteEvent> get copyWith =>
      __$$_EventDeleteEventCopyWithImpl<_$_EventDeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchEvents,
    required TResult Function(EventModel event) createEvent,
    required TResult Function(EventModel event) updateEvent,
    required TResult Function(String id) deleteEvent,
  }) {
    return deleteEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchEvents,
    TResult? Function(EventModel event)? createEvent,
    TResult? Function(EventModel event)? updateEvent,
    TResult? Function(String id)? deleteEvent,
  }) {
    return deleteEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchEvents,
    TResult Function(EventModel event)? createEvent,
    TResult Function(EventModel event)? updateEvent,
    TResult Function(String id)? deleteEvent,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventFetchEvents value) fetchEvents,
    required TResult Function(_EventCreateEvent value) createEvent,
    required TResult Function(_EventUpdateEvent value) updateEvent,
    required TResult Function(_EventDeleteEvent value) deleteEvent,
  }) {
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventFetchEvents value)? fetchEvents,
    TResult? Function(_EventCreateEvent value)? createEvent,
    TResult? Function(_EventUpdateEvent value)? updateEvent,
    TResult? Function(_EventDeleteEvent value)? deleteEvent,
  }) {
    return deleteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventFetchEvents value)? fetchEvents,
    TResult Function(_EventCreateEvent value)? createEvent,
    TResult Function(_EventUpdateEvent value)? updateEvent,
    TResult Function(_EventDeleteEvent value)? deleteEvent,
    required TResult orElse(),
  }) {
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class _EventDeleteEvent implements EventEvent {
  const factory _EventDeleteEvent({required final String id}) =
      _$_EventDeleteEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$_EventDeleteEventCopyWith<_$_EventDeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) fetched,
    required TResult Function(EventModel events) uploaded,
    required TResult Function(EventModel events) updated,
    required TResult Function(Exception error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> events)? fetched,
    TResult? Function(EventModel events)? uploaded,
    TResult? Function(EventModel events)? updated,
    TResult? Function(Exception error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> events)? fetched,
    TResult Function(EventModel events)? uploaded,
    TResult Function(EventModel events)? updated,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStateCopyWith<$Res> {
  factory $EventStateCopyWith(
          EventState value, $Res Function(EventState) then) =
      _$EventStateCopyWithImpl<$Res, EventState>;
}

/// @nodoc
class _$EventStateCopyWithImpl<$Res, $Val extends EventState>
    implements $EventStateCopyWith<$Res> {
  _$EventStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EventState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) fetched,
    required TResult Function(EventModel events) uploaded,
    required TResult Function(EventModel events) updated,
    required TResult Function(Exception error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> events)? fetched,
    TResult? Function(EventModel events)? uploaded,
    TResult? Function(EventModel events)? updated,
    TResult? Function(Exception error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> events)? fetched,
    TResult Function(EventModel events)? uploaded,
    TResult Function(EventModel events)? updated,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EventState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'EventState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) fetched,
    required TResult Function(EventModel events) uploaded,
    required TResult Function(EventModel events) updated,
    required TResult Function(Exception error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> events)? fetched,
    TResult? Function(EventModel events)? uploaded,
    TResult? Function(EventModel events)? updated,
    TResult? Function(Exception error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> events)? fetched,
    TResult Function(EventModel events)? uploaded,
    TResult Function(EventModel events)? updated,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements EventState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FetchedCopyWith<$Res> {
  factory _$$_FetchedCopyWith(
          _$_Fetched value, $Res Function(_$_Fetched) then) =
      __$$_FetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EventModel> events});
}

/// @nodoc
class __$$_FetchedCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$_Fetched>
    implements _$$_FetchedCopyWith<$Res> {
  __$$_FetchedCopyWithImpl(_$_Fetched _value, $Res Function(_$_Fetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_Fetched(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
    ));
  }
}

/// @nodoc

class _$_Fetched implements _Fetched {
  const _$_Fetched({required final List<EventModel> events}) : _events = events;

  final List<EventModel> _events;
  @override
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'EventState.fetched(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fetched &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchedCopyWith<_$_Fetched> get copyWith =>
      __$$_FetchedCopyWithImpl<_$_Fetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) fetched,
    required TResult Function(EventModel events) uploaded,
    required TResult Function(EventModel events) updated,
    required TResult Function(Exception error) error,
  }) {
    return fetched(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> events)? fetched,
    TResult? Function(EventModel events)? uploaded,
    TResult? Function(EventModel events)? updated,
    TResult? Function(Exception error)? error,
  }) {
    return fetched?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> events)? fetched,
    TResult Function(EventModel events)? uploaded,
    TResult Function(EventModel events)? updated,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Error value)? error,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _Fetched implements EventState {
  const factory _Fetched({required final List<EventModel> events}) = _$_Fetched;

  List<EventModel> get events;
  @JsonKey(ignore: true)
  _$$_FetchedCopyWith<_$_Fetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadedCopyWith<$Res> {
  factory _$$_UploadedCopyWith(
          _$_Uploaded value, $Res Function(_$_Uploaded) then) =
      __$$_UploadedCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel events});
}

/// @nodoc
class __$$_UploadedCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$_Uploaded>
    implements _$$_UploadedCopyWith<$Res> {
  __$$_UploadedCopyWithImpl(
      _$_Uploaded _value, $Res Function(_$_Uploaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_Uploaded(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as EventModel,
    ));
  }
}

/// @nodoc

class _$_Uploaded implements _Uploaded {
  const _$_Uploaded({required this.events});

  @override
  final EventModel events;

  @override
  String toString() {
    return 'EventState.uploaded(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Uploaded &&
            (identical(other.events, events) || other.events == events));
  }

  @override
  int get hashCode => Object.hash(runtimeType, events);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadedCopyWith<_$_Uploaded> get copyWith =>
      __$$_UploadedCopyWithImpl<_$_Uploaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) fetched,
    required TResult Function(EventModel events) uploaded,
    required TResult Function(EventModel events) updated,
    required TResult Function(Exception error) error,
  }) {
    return uploaded(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> events)? fetched,
    TResult? Function(EventModel events)? uploaded,
    TResult? Function(EventModel events)? updated,
    TResult? Function(Exception error)? error,
  }) {
    return uploaded?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> events)? fetched,
    TResult Function(EventModel events)? uploaded,
    TResult Function(EventModel events)? updated,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return uploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Error value)? error,
  }) {
    return uploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (uploaded != null) {
      return uploaded(this);
    }
    return orElse();
  }
}

abstract class _Uploaded implements EventState {
  const factory _Uploaded({required final EventModel events}) = _$_Uploaded;

  EventModel get events;
  @JsonKey(ignore: true)
  _$$_UploadedCopyWith<_$_Uploaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatedCopyWith<$Res> {
  factory _$$_UpdatedCopyWith(
          _$_Updated value, $Res Function(_$_Updated) then) =
      __$$_UpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({EventModel events});
}

/// @nodoc
class __$$_UpdatedCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$_Updated>
    implements _$$_UpdatedCopyWith<$Res> {
  __$$_UpdatedCopyWithImpl(_$_Updated _value, $Res Function(_$_Updated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
  }) {
    return _then(_$_Updated(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as EventModel,
    ));
  }
}

/// @nodoc

class _$_Updated implements _Updated {
  const _$_Updated({required this.events});

  @override
  final EventModel events;

  @override
  String toString() {
    return 'EventState.updated(events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Updated &&
            (identical(other.events, events) || other.events == events));
  }

  @override
  int get hashCode => Object.hash(runtimeType, events);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatedCopyWith<_$_Updated> get copyWith =>
      __$$_UpdatedCopyWithImpl<_$_Updated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) fetched,
    required TResult Function(EventModel events) uploaded,
    required TResult Function(EventModel events) updated,
    required TResult Function(Exception error) error,
  }) {
    return updated(events);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> events)? fetched,
    TResult? Function(EventModel events)? uploaded,
    TResult? Function(EventModel events)? updated,
    TResult? Function(Exception error)? error,
  }) {
    return updated?.call(events);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> events)? fetched,
    TResult Function(EventModel events)? uploaded,
    TResult Function(EventModel events)? updated,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(events);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Error value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements EventState {
  const factory _Updated({required final EventModel events}) = _$_Updated;

  EventModel get events;
  @JsonKey(ignore: true)
  _$$_UpdatedCopyWith<_$_Updated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_Error(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error});

  @override
  final Exception error;

  @override
  String toString() {
    return 'EventState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<EventModel> events) fetched,
    required TResult Function(EventModel events) uploaded,
    required TResult Function(EventModel events) updated,
    required TResult Function(Exception error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<EventModel> events)? fetched,
    TResult? Function(EventModel events)? uploaded,
    TResult? Function(EventModel events)? updated,
    TResult? Function(Exception error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<EventModel> events)? fetched,
    TResult Function(EventModel events)? uploaded,
    TResult Function(EventModel events)? updated,
    TResult Function(Exception error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Fetched value) fetched,
    required TResult Function(_Uploaded value) uploaded,
    required TResult Function(_Updated value) updated,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Fetched value)? fetched,
    TResult? Function(_Uploaded value)? uploaded,
    TResult? Function(_Updated value)? updated,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Fetched value)? fetched,
    TResult Function(_Uploaded value)? uploaded,
    TResult Function(_Updated value)? updated,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements EventState {
  const factory _Error({required final Exception error}) = _$_Error;

  Exception get error;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
