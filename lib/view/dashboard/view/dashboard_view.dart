// lib/dashboard/dashboard_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/constants/color_constants.dart';
import 'package:ieee_event_app/core/enums/index.dart';
import 'package:ieee_event_app/core/extensions/index.dart';
import 'package:ieee_event_app/core/helpers/logger.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/cubits/filter_cubit.dart';
import 'package:ieee_event_app/logic/blocs/cubits/localization_cubit.dart';
import 'package:ieee_event_app/logic/blocs/cubits/nav_bar_cubit.dart';
import 'package:ieee_event_app/logic/blocs/event/event_bloc.dart';
import 'package:ieee_event_app/view/dashboard/view/bottom_sheet/add_event_bottom_sheet.dart';
import 'package:ieee_event_app/view/shared/bottom_nav_bar.dart';

part 'dashboard_view_mixin.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> with DashboardViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit, LocalizationState>(
      bloc: context.get<LocalizationCubit>(),
      builder: (context, state) {
        return BlocBuilder<NavBarCubit, int>(
          bloc: context.get<NavBarCubit>(),
          builder: (context, selectedIndex) {
            return BlocProvider(
              create: (context) => FilterCubit(),
              child: Scaffold(
                body: const RouterOutlet(),
                bottomNavigationBar: CustomButtomNavBar(
                  currentIndex: selectedIndex,
                  onPressed: (index) {
                    context.get<NavBarCubit>().setIndex(index);
                  },
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                floatingActionButton: isUserAuthorized()
                    ? FloatingActionButton(
                        onPressed: onSheetOpened,
                        shape: const CircleBorder(),
                        hoverColor: ColorConstants.backgroundColor,
                        child: Icon(
                          Icons.add,
                          color: ColorConstants.textColorLight.withOpacity(0.6),
                        ),
                      )
                    : null,
              ),
            );
          },
        );
      },
    );
  }
}
