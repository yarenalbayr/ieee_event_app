import 'package:dartz/dartz.dart';
import 'package:ieee_event_app/core/enums/firebase_collections.dart';
import 'package:ieee_event_app/core/extensions/either_extension.dart';
import 'package:ieee_event_app/core/mixins/error_wrapper_mixin.dart';
import 'package:ieee_event_app/logic/models/event_model.dart';

abstract class IEventService {
  const IEventService();
  Future<Either<Exception, List<EventModel>>> fetchEvents();

  Future<Either<Exception, void>> createEvent({
    required EventModel event,
  });

  Future<Either<Exception, EventModel>> updateEvent({
    required EventModel event,
  });

  Future<Either<Exception, void>> deleteEvent({
    required EventModel event,
  });
}

class EventService extends IEventService with ErrorWrapper {
  const EventService();

  @override
  Future<Either<Exception, List<EventModel>>> fetchEvents() async {
    return errorWrapper(() async {
      final events = await FirebaseCollections.events.collectionReference.get();
      final eventsList =
          events.docs.map((e) => EventModel.fromMap(e.data())).toList();
      return eventsList.toRight();
    });
  }

  @override
  Future<Either<Exception, void>> createEvent({
    required EventModel event,
  }) {
    return errorWrapper(() async {
      final eventMap = event.toMap();
      final eventRef = FirebaseCollections.events.collectionReference;
      return eventRef.add(eventMap).toRight();
    });
  }

  @override
  Future<Either<Exception, void>> deleteEvent({required EventModel event}) {
    return errorWrapper(() async {
      final eventRef = FirebaseCollections.events.collectionReference;
      return eventRef.doc(event.id).delete().toRight();
    });
  }

  @override
  Future<Either<Exception, EventModel>> updateEvent({
    required EventModel event,
  }) {
    return errorWrapper(() async {
      final eventMap = event.toMap();
      final eventRef = FirebaseCollections.events.collectionReference;
      await eventRef.doc(event.id).update(eventMap);
      return event.toRight();
    });
  }
}
