part of 'home_module.dart';

class HomeRoutes{
  static const String moduleName = '/home';

  static const String homeRoute = '$moduleName${_RawHomeRoutes.homeRoute}';
  static const String homeDetail = '$moduleName${_RawHomeRoutes.detail}';
}

class _RawHomeRoutes{
  static const String homeRoute = '/homeRoute';
  static const String detail = '/detail';
}
