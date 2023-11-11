import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ieee_event_app/logic/blocs/user/user_bloc.dart';
import 'package:ieee_event_app/logic/services/auth/auth_service.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required IAuthService authService,
    required UserBloc userBloc,
  })  : _authService = authService,
        _userBloc = userBloc,
        super(const AuthState.initial()) {
    on<_AuthLoginUser>(_onAuthLoginUser);
    on<_AuthCreateUser>(_onAuthCreateUser);
  }

  final IAuthService _authService;
  final UserBloc _userBloc;

  Future<FutureOr<void>> _onAuthLoginUser(
    _AuthLoginUser event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final response = await _authService.signInWithEmailAndPassword(
      email: event.email,
      password: event.password,
    );

    response.fold(
      (l) => emit(AuthState.error(error: l)),
      (r) {
        _userBloc.add(UserEvent.registerUser(user: r));
        emit(const AuthState.success());
      },
    );
  }

  Future<FutureOr<void>> _onAuthCreateUser(
    _AuthCreateUser event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final response = await _authService.createUserWithEmailAndPassword(
      email: event.email,
      password: event.password,
    );

    response.fold(
      (l) => emit(AuthState.error(error: l)),
      (r) {
        _userBloc.add(UserEvent.registerUser(user: r));
        emit(const AuthState.success());
      },
    );
  }
}
