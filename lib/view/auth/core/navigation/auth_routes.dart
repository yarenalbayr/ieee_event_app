part of 'auth_module.dart';

class AuthRoutes {
  static const String moduleName = '/auth';
  static const String loginView = '$moduleName${_RawAuthRoutes.login}';
  static const String signUpView = '$moduleName${_RawAuthRoutes.signUp}';
  static const String splashView = '$moduleName${_RawAuthRoutes.splash}';

}

class _RawAuthRoutes {
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String splash = '/splash';
}
