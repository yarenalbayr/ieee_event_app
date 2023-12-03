import 'package:cloud_firestore/cloud_firestore.dart';

enum FirebaseCollections {
  users,
  events;
}

extension FirebaseCollectionsExtension on FirebaseCollections {
  static final _firestore = FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> get collectionReference {
    switch (this) {
      case FirebaseCollections.users:
        return _firestore.collection('users');
      case FirebaseCollections.events:
        return _firestore.collection('events');
    }
  }
}
