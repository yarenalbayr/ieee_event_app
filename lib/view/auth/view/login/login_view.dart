import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/mixins/loading_mixin.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/auth/auth_bloc.dart';

part 'login_view_mixin.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView>
    with LoginViewMixin, LoadingMixin {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.get<AuthBloc>();
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: _emailController,
            ),
            TextFormField(
              controller: _passwordController,
            ),
            ElevatedButton(
              onPressed: () {
                authBloc.add(
                  AuthEvent.createUser(
                    email: _emailController.text,
                    password: _passwordController.text,
                  ),
                );
                // const event = UserEvent.registerUser()
                // if (_formKey.currentState!.validate()) {
                //   //TODO
                // }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
