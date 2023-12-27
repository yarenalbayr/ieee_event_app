part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.loginUser({
    required String email,
    required String password,
  }) = _AuthLoginUser;
  const factory AuthEvent.createUser({
    required String email,
    required String password,
     required String name,

  }) = _AuthCreateUser;
}
