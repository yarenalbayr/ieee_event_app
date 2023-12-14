part of 'dashboard_module.dart';

class DashboardRoutes {
  static const String moduleName = '/dashboard';

  static const String main = '$moduleName${_RawDashboardRoutes.main}';
  static const String splash = '$moduleName${_RawDashboardRoutes.splash}';
  static const String home = '$main${_RawDashboardRoutes.home}';
  static const String profile = '$main${_RawDashboardRoutes.profile}';
}

class _RawDashboardRoutes {
  static const String main = '/main';
  static const String splash = '/splash';
  static const String home = '/home';
  static const String profile = '/profile';
}
