import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/constants/color_constants.dart';

class CustomTextTheme extends TextTheme {
  TextStyle get defaultTextTheme {
    return const TextStyle(
      color: ColorConstants.textColorLight,
    );
  }

  @override
  TextStyle get displayLarge {
    return defaultTextTheme.copyWith(
      fontSize: 30,
    );
  }

  @override
  TextStyle get displayMedium {
    return defaultTextTheme.copyWith(
      fontSize: 26,
    );
  }

  @override
  TextStyle get displaySmall {
    return defaultTextTheme.copyWith(
      fontSize: 24,
    );
  }

  @override
  TextStyle get headlineLarge {
    return defaultTextTheme.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    );
  }

  @override
  TextStyle get headlineMedium {
    return defaultTextTheme.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w700,
    );
  }

  @override
  TextStyle get headlineSmall {
    return defaultTextTheme.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w700,
    );
  }

  @override
  TextStyle get labelLarge {
    return defaultTextTheme.copyWith(
      fontSize: 18,
    );
  }

  @override
  TextStyle get labelMedium {
    return defaultTextTheme.copyWith(
      fontSize: 16,
    );
  }

  @override
  TextStyle get labelSmall {
    return defaultTextTheme.copyWith(
      fontSize: 12,
    );
  }

  @override
  TextStyle get bodyLarge {
    return defaultTextTheme.copyWith(
      fontSize: 18,
    );
  }

  @override
  TextStyle get bodyMedium {
    return defaultTextTheme.copyWith(
      fontSize: 16,
    );
  }

  @override
  TextStyle get bodySmall {
    return defaultTextTheme.copyWith(
      fontSize: 14,
    );
  }
}


