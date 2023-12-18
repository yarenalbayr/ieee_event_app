import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ieee_event_app/core/enums/comitee_enum.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class EventModel {
  EventModel({
    required this.date,
    required this.committee,
    required this.title,
    required this.description,
    this.id,
    this.image,
    this.location,
    this.attendees,
  });

  final String title;
  final String description;
  final String? image;
  final DateTime date;
  final String? location;
  final String? id;
  final ECommittees committee;
  final List<String>? attendees;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'date': DateTime.parse(date.toString()),
      'committee': committee.name,
      'image': image,
      'location': location,
      'attendees': attendees ?? [],
    };
  }

  factory EventModel.fromMap(Map<String, dynamic> map) {
    return EventModel(
      title: map['title'] as String,
      description: map['description'] as String,
      date: (map['date'] as Timestamp).toDate(),
      committee: ECommittees.fromString(map['committee'] as String),
      image: map['image'] as String?,
      location: map['location'] as String?,
      id: map['id'] as String,
      attendees: (map['attendees'] as List<dynamic>).cast<String>(),
    );
  }

  String toJson() => json.encode(toMap());

  factory EventModel.fromJson(String source) =>
      EventModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
