import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';

import 'package:ieee_event_app/logic/blocs/user/user_bloc.dart';
import 'package:ieee_event_app/logic/models/user_model.dart';
import 'package:ieee_event_app/view/auth/core/navigation/auth_module.dart';
import 'package:ieee_event_app/view/home/core/navigation/home_module.dart';

///Listens to state changes of user from firebase if user is null navigates to
///login if user exist navigates to home view
class AuthStateListenerWrapper extends StatefulWidget {
  const AuthStateListenerWrapper({required this.child, super.key});

  final Widget child;

  @override
  State<AuthStateListenerWrapper> createState() =>
      _AuthStateListenerWrapperState();
}

class _AuthStateListenerWrapperState extends State<AuthStateListenerWrapper> {
  late final StreamSubscription<User?> _userStateSubscription;
  late final UserModel? user;

  @override
  void initState() {
    super.initState();
    final userBloc = context.get<UserBloc>();
    // final homeBloc = context.get<HomeBloc>();

    final isNoneUser = userBloc.state.maybeWhen(
      orElse: () => false,
      unauthenticated: () => true,
    );

    user = FirebaseAuth.instance.currentUser != null
        ? UserModel.fromFirebaseUser(FirebaseAuth.instance.currentUser!)
        : null;

    if (user != null && !isNoneUser) {
      userBloc.add(UserEvent.registerUser(user: user!));
      // homeBloc.add(const HomeEvent.fetchHomeData());
    } else {
      userBloc.add(const UserEvent.unregisterUser());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      bloc: context.get<UserBloc>(),
      listener: (context, state) {
        state.mapOrNull(
          unauthenticated: (value) => Modular.to.navigate(AuthRoutes.loginView),
          success: (value) =>Modular.to.navigate(HomeRoutes.splash),
        );
      },
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _userStateSubscription.cancel();
    super.dispose();
  }
}
