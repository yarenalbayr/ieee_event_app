// ignore_for_file: inference_failure_on_function_invocation

import 'package:flutter_test/flutter_test.dart';
import 'package:ieee_event_app/logic/models/user_model.dart';
import 'package:ieee_event_app/logic/services/auth/auth_service.dart';

import 'mock.dart';

void main() {
  late IAuthService authService;

  setUp(() {
    setupFirebaseAuthMocks();
    authService = AuthService();
  });

  test('Create user', () async {
    final result = await authService.createUserWithEmailAndPassword(
      email: 'test1@gmail.com',
      password: 'Abc123#',
    );

    result.fold(
      (l) => fail('Failed on creatign user: $l'),
      (r) => expect(r, isInstanceOf<UserModel>),
    );
  });
}
