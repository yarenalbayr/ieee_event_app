// lib/dashboard/dashboard_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/nav_bar_cubit.dart';
import 'package:ieee_event_app/view/shared/bottom_nav_bar.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, int>(
      bloc: context.get<NavBarCubit>(),
      builder: (context, selectedIndex) {
        return Scaffold(
          body: const RouterOutlet(),
          bottomNavigationBar: CustomButtomNavBar(
            currentIndex: selectedIndex,
            onPressed: (index) {
              context.get<NavBarCubit>().setIndex(index);
            },
          ),
        );
      },
    );
  }
}
