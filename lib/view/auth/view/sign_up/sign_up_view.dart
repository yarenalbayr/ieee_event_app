import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/constants/index.dart';
import 'package:ieee_event_app/core/extensions/index.dart';
import 'package:ieee_event_app/core/mixins/index.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/auth/auth_bloc.dart';
import 'package:ieee_event_app/view/auth/view/auth_view.dart';
import 'package:ieee_event_app/view/dashboard/core/dashboard_module.dart';
import 'package:ieee_event_app/view/shared/components/custom_text_field.dart';
import 'package:ieee_event_app/view/template/custom_state_listener.dart';

part 'sign_up_view_mixin.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView>
    with SignUpViewMixin, ValidatorsMixins {
  @override
  Widget build(BuildContext context) {
    final authBloc = context.get<AuthBloc>();
    return CustomStateListener<AuthBloc, AuthState>(
      loadingState: (s) => s.mapOrNull(loading: (s) => s),
      errorState: (s) => s.mapOrNull(error: (s) => s.error),
      listener: (context, state) {
        state.maybeWhen(
          success: () => Modular.to.navigate(DashboardRoutes.splash),
          orElse: () => null,
        );
      },
      child: AuthView(
        pageName: LocaleKeys.auth_sign_up,
        onSubmit: () => authBloc.add(
          AuthEvent.createUser(
            email: _emailController.text,
            password: _passwordController.text,
          ),
        ),
        children: [
          context.sizedBoxHigh,
          CustomTextField(
            text: LocaleKeys.auth_email.tr(),
            controller: _emailController,
            validator: isValidEmail,
          ),
          context.sizedBoxNormal,
          ValueListenableBuilder<bool>(
            valueListenable: _willShowPassword,
            builder: (context, value, child) => CustomTextField(
              text: LocaleKeys.auth_password.tr(),
              controller: _passwordController,
              obscureText: !value,
              validator: (text) => lenghtHasToBeAtLeast(8, text),
              suffixIcon: IconButton(
                icon: Icon(
                  value ? Icons.visibility : Icons.visibility_off,
                  color: ColorConstants.primary,
                ),
                onPressed: () => _willShowPassword.value = !value,
              ),
            ),
          ),
          context.sizedBoxNormal,
        ],
      ),
    );
  }
}

// Scaffold(
//         body: Padding(
//           padding: context.paddingNormal,
//           child: SafeArea(
//             child: Form(
//               key:_formKey,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   Text(
//                     'Sign Up',
//                     style: context.textTheme.displayLarge
//                         ?.copyWith(fontWeight: FontWeight.w700),
//                   ),
//                   context.sizedBoxHigh,
//                   Image.asset(AppIcons.ieeeLogoBlue),

//                   ElevatedButton(
//                     onPressed: () {
//                       authBloc.add(
//                         AuthEvent.loginUser(
//                           email: _emailController.text,
//                           password: _passwordController.text,
//                         ),
//                       );
//                       // if (_formKey.currentState!.validate()) {
//                       //   //TODO
//                       // }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: ColorConstants.primary, // Background color
//                     ),
//                     child: Text(
//                       'Login',
//                       style: context.textTheme.headlineSmall,
//                     ),
//                   ),
//                   TextButton(
//                     child: const Text('Forget Password?'),
//                     onPressed: () {
//                       // Implement password recovery logic
//                     },
//                   ),
//                   TextButton(
//                     child: const Text('Already have an account? Log in!'),
//                     onPressed: () {
//                       Modular.to.pushNamed(AuthRoutes.loginView);
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),



