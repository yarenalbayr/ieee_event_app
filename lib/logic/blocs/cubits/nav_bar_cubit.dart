import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/view/dashboard/core/dashboard_module.dart';

class NavBarCubit extends Cubit<int> {
  NavBarCubit() : super(0) {
    _navigateToIndex(0);
  }

  void setIndex(int index) {
    if (state != index) {
      emit(index);
      _navigateToIndex(index);
    }
  }

  void _navigateToIndex(int index) {
    switch (index) {
      case 0:
        Modular.to.navigate(DashboardRoutes.home);
// Ensure you have break statements to avoid fall-through
      case 1:
        Modular.to.navigate(DashboardRoutes.profile);
      default:
        Modular.to.navigate(DashboardRoutes.home);
    }
  }
}
