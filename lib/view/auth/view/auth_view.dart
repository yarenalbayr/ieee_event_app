import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/constants/icon_constants.dart';
import 'package:ieee_event_app/core/constants/theme/theme.dart';
import 'package:ieee_event_app/core/extensions/index.dart';
import 'package:ieee_event_app/view/auth/core/navigation/auth_module.dart';
import 'package:ieee_event_app/view/shared/components/custom_button.dart';

class AuthView extends StatelessWidget {
  AuthView({
    required this.pageName,
    required this.children,
    required this.onSubmit,
    super.key,
  });
  final String pageName;
  final List<Widget> children;
  final void Function() onSubmit;

  final _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: InkWell(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: context.paddingNormal,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Form(
                key: _key,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        pageName.tr(),
                        style: context.textTheme.displayLarge
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                    ),
                    context.sizedBoxHigh,
                    Image.asset(AppIcons.ieeeLogoBlue),
                    context.sizedBoxHigh,
                    ...children,
                    CustomButton.large(
                      onPressed: () async {
                        if (_key.currentState?.validate() != true) return;
                        onSubmit();
                      },
                      text: pageName.tr(),
                    ),
                    TextButton(
                      child: Text(
                        (pageName == LocaleKeys.auth_login)
                            ? LocaleKeys.auth_dont_have_account.tr()
                            : LocaleKeys.auth_already_have_account.tr(),
                      ),
                      onPressed: () {
                        (pageName == LocaleKeys.auth_login)
                            ? Modular.to.pushNamed(AuthRoutes.signUpView)
                            : Modular.to.pushNamed(AuthRoutes.loginView);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
