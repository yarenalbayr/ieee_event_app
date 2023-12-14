part of 'home_view.dart';
mixin HomeViewMixin on State<HomeView> {
  EventBloc get _eventBloc => context.get<EventBloc>();


  Future<void> _fetchEvents() async {
    _eventBloc.add(const EventEvent.fetchEvents());
  }
}
