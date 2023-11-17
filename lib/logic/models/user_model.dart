// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:ieee_event_app/core/constants/user_role_constants.dart';
import 'package:ieee_event_app/core/enums/user_role_enum.dart';

final class UserModel{
  const UserModel({
    this.name,
    this.email,
    this.uid,
    this.role,
    this.token,
  });
  final String? name;
  final String? email;
  final String? uid;
  final EUserRole? role;
  final String? token;

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, uid: $uid, role: $role, token: $token)';
  }

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  UserModel copyWith({
    String? name,
    String? email,
    String? uid,
    EUserRole? role,
    String? token,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      uid: uid ?? this.uid,
      role: role ?? this.role,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name ?? '',
      'email': email ?? '',
      'uid': uid ?? '',
      'role': role?.name ?? '',
      'token': token ?? '',
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      email: map['email'] as String,
      uid: map['uid'] as String,
      role: EUserRole.fromString(map['role'] as String),
      token: map['token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromFirebaseUser(User fbUser) {
    return UserModel(
      name: fbUser.displayName ?? '',
      email: fbUser.email ?? '',
      uid: fbUser.uid,
      role: UserRoleConstants.checkUserRole(email: fbUser.email),
      token: '',
    );
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.uid == uid &&
        other.role == role &&
        other.token == token;
  }
}
