import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/constants/color_constants.dart';
import 'package:ieee_event_app/core/extensions/context_extensions.dart';

final class CustomButtomNavBar extends StatelessWidget {
  const CustomButtomNavBar({
    required this.currentIndex,
    super.key,
    this.onPressed,
  });
  final void Function(int)? onPressed;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorConstants.formColor,
            ColorConstants.backgroundColor,
          ],
        ),
        borderRadius: context.borderHigh,
      ),
      child: BottomNavigationBar(
        items: navBarItems,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: onPressed,
        selectedItemColor: ColorConstants.primary,
      ),
    );
  }

  static List<BottomNavigationBarItem> navBarItems = [
    BottomNavigationBarItem(
      icon: const Icon(Icons.home),
      activeIcon: const Icon(Icons.home_filled),
      label: LocaleKeys.common_home.tr(),
    ),
    BottomNavigationBarItem(
      icon: const Icon(Icons.person),
      activeIcon: const Icon(Icons.pets_sharp),
      label: LocaleKeys.common_profile.tr(),
    ),
  ];
}
