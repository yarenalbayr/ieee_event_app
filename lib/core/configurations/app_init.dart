import 'package:flutter/material.dart';

class ApplicationInit {
  const ApplicationInit._();

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
  }
}
