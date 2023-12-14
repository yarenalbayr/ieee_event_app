import 'package:flutter/material.dart';

final class CustomButtomNavBar extends BottomNavigationBar {
  CustomButtomNavBar({super.key}) : super(items: navBarItems);

  static List<BottomNavigationBarItem> navBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];
}
