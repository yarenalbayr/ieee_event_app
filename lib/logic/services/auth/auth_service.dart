import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ieee_event_app/core/enums/firebase_collections.dart';
import 'package:ieee_event_app/core/exceptions/auth_exception.dart';
import 'package:ieee_event_app/core/extensions/either_extension.dart';
import 'package:ieee_event_app/core/helpers/logger.dart';
import 'package:ieee_event_app/logic/models/user_model.dart';

abstract class IAuthService {
  Future<Either<Exception, UserModel>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Exception, UserModel>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<Either<Exception, void>> signOut();

  //saves user to firebase database
  Future<Either<Exception, void>> saveUser(UserModel user);

  //fetch user, return null if not exist
  Future<Either<Exception, UserModel?>> fetchUser({String? uid});
}

final class AuthService implements IAuthService {
  AuthService() : _firebaseAuth = FirebaseAuth.instance;

  final FirebaseAuth _firebaseAuth;

  @override
  Future<Either<Exception, UserModel>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    return _errorWrapper(() async {
      final userCredentials = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      final user = UserModel.fromFirebaseUser(userCredentials.user!);
      await saveUser(user);
      return user.toRight();
    });
  }

  @override
  Future<Either<Exception, UserModel>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    return _errorWrapper(() async {
      final userCredantials = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = await fetchUser(uid: userCredantials.user!.uid);
      final response = user.fold(
        (l) => throw l,
        (r) => r,
      );
      return response!.toRight(); //TODO
    });
  }

  @override
  Future<Either<Exception, void>> saveUser(UserModel user) {
    return _errorWrapper(() async {
      final userUID = _firebaseAuth.currentUser?.uid;
      await FirebaseCollections.users.collectionReference
          .doc(userUID)
          .set(user.toMap());
      return user.toMap().toRight();
    });
  }

  @override
  Future<Either<Exception, UserModel?>> fetchUser({String? uid}) {
    return _errorWrapper(() async {
      final userUID = uid ?? _firebaseAuth.currentUser?.uid;
      final user = await FirebaseCollections.users.collectionReference
          .doc(userUID)
          .get();
      final result =
          user.data() == null ? null : UserModel.fromMap(user.data()!);
      return result.toRight();
    });
  }

  @override
  Future<Either<Exception, void>> signOut() {
    return _errorWrapper(() async {
      return _firebaseAuth.signOut().toRight();
    });
  }

  Future<Either<Exception, T>> _errorWrapper<T>(
    Future<Either<Exception, T>> Function() function,
  ) async {
    try {
      return await function();
    } on FirebaseAuthException catch (e) {
      logger.d(e);
      return left(e);
    } catch (e) {
      logger.d(e);
      return left(const UnknownError());
    }
  }
}
