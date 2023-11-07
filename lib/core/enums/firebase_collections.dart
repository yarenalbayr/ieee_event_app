import 'package:cloud_firestore/cloud_firestore.dart';

enum FirebaseCollections {
  users;
}

extension FirebaseCollectionsExtension on FirebaseCollections {
  static final _firestore = FirebaseFirestore.instance;
  
  CollectionReference<Map<String, dynamic>> get collectionRef {
    switch (this) {
      case FirebaseCollections.users:
        return _firestore.collection('users');
    }
  }
}
