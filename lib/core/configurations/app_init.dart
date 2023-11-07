import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ieee_event_app/firebase_options.dart';

class ApplicationInit {
  const ApplicationInit._();

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await EasyLocalization.ensureInitialized();

    FlutterError.onError =
        (details) => debugPrint(details.exception.toString());
  }
}
