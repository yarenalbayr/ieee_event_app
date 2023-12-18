part of 'dashboard_view.dart';

mixin DashboardViewMixin on State<DashboardView> {
  bool isUserAuthorized() {
    final usertype = context.userCredentialsOrNull?.role;
    if (usertype == null) {
      return false;
    }
    return usertype == EUserRole.admin || usertype == EUserRole.committee;
  }

  Future<void> onSheetOpened() async {
    final response = await AddEventSheetExtension.showSheet(context);
    if (response != null) {
      logger.d(response);
      context.get<EventBloc>().add(
            EventEvent.createEvent(event: response),
          );
    }
  }
}
