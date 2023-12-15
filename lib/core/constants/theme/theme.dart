import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/constants/color_constants.dart';
import 'package:ieee_event_app/core/constants/theme/custom_text_theme.dart';

extension ThemeContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

ThemeData get darkTheme => ThemeData(
      brightness: Brightness.dark,
      fontFamily: 'Gilroy',
      primaryColor: ColorConstants.backgroundColor,
      useMaterial3: true,
      scaffoldBackgroundColor: ColorConstants.backgroundColor,
      splashFactory: NoSplash.splashFactory,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: ColorConstants.primary,
        secondary: ColorConstants.primary,
        onSecondary: ColorConstants.primary,
        onPrimary: ColorConstants.primary,
        error: Colors.red,
        onError: Colors.red,
        background: ColorConstants.backgroundColor,
        onBackground: ColorConstants.backgroundColor,
        surface: Color(0x000000ff),
        onSurface: Color(0x000000ff),
      ),
      appBarTheme: AppBarTheme(
        color: ColorConstants.backgroundColor,
        iconTheme: IconThemeData(color: Colors.grey[100]),
        titleTextStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: ColorConstants.textColorLight,
        ),
      ),
      textTheme: CustomTextTheme(),
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: ColorConstants.formColor,
        filled: true,
        labelStyle: TextStyle(
          fontSize: 16,
          color: ColorConstants.textColorLight,
        ),
        border: OutlineInputBorder(
          gapPadding: 120,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      buttonTheme:
          const ButtonThemeData(buttonColor: ColorConstants.buttonPurple),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
            (states) => ColorConstants.buttonPurple,
          ),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(
              fontSize: 16,
              color: ColorConstants.textColorLight,
            ),
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(ColorConstants.textColorLight),
        fillColor: MaterialStateProperty.all(ColorConstants.buttonAqua),
      ),
      unselectedWidgetColor: ColorConstants.formColor,
    );
