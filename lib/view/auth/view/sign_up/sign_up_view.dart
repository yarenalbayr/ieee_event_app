import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/constants/index.dart';
import 'package:ieee_event_app/core/constants/theme/theme.dart';
import 'package:ieee_event_app/core/extensions/index.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/auth/auth_bloc.dart';
import 'package:ieee_event_app/view/auth/core/navigation/auth_module.dart';
import 'package:ieee_event_app/view/dashboard/core/dashboard_module.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.get<AuthBloc>();
    return BlocListener<AuthBloc, AuthState>(
      bloc: authBloc,
      listener: (context, state) {
        state.maybeWhen(
          success: () => Modular.to.navigate(DashboardRoutes.main),
          orElse: () => null,
        );
      },
      child: Scaffold(
        body: Padding(
          padding: context.paddingNormal,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Sign Up',
                  style: context.textTheme.displayLarge
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                context.sizedBoxHigh,
                Image.asset(AppIcons.ieeeLogoBlue),
                context.sizedBoxHigh,
                _buildTextField(hint: 'Email'),
                context.sizedBoxNormal,
                _buildTextField(hint: 'Password', obscureText: true),
                context.sizedBoxNormal,
                ElevatedButton(
                  onPressed: () {
                    // authBloc.add(
                    //   AuthEvent.createUser(
                    //     email: _emailController.text,
                    //     password: _passwordController.text,
                    //   ),
                    // );
                    // const event = UserEvent.registerUser()
                    // if (_formKey.currentState!.validate()) {
                    //   //TODO
                    // }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.primary, // Background color
                  ),
                  child: Text(
                    'Login',
                    style: context.textTheme.headlineSmall,
                  ),
                ),
                TextButton(
                  child: const Text('Forget Password?'),
                  onPressed: () {
                    // Implement password recovery logic
                  },
                ),
                TextButton(
                  child: const Text("Don't have an account? Login"),
                  onPressed: () {
                    Modular.to.pushNamed(AuthRoutes.loginView);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hint, bool obscureText = false}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[800],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
      ),
      obscureText: obscureText,
    );
  }
}
