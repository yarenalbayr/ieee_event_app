import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

final class AppLocalization extends EasyLocalization {
  AppLocalization({
    required super.child,
    super.key,
  }) : super(
          path: _path,
          supportedLocales: _supportedLocales,
        );

  static final List<Locale> _supportedLocales = [
    AppLanguages.en.locale,
    AppLanguages.tr.locale,
  ];

  static void changeLocale({
    required Locale locale,
    required BuildContext context,
  }) {
    EasyLocalization.of(context)!.setLocale(locale);
  }

  static const String _path = 'assets/lang';
}

enum AppLanguages {
  en(Locale('en', 'US')),
  tr(Locale('tr', 'TR'));

  final Locale locale;
  // ignore: sort_constructors_first
  const AppLanguages(this.locale);
}
