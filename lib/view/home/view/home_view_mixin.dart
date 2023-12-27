part of 'home_view.dart';
mixin HomeViewMixin on State<HomeView> {
  EventBloc get _eventBloc => context.get<EventBloc>();
  FilterCubit get _filterCubit => context.get<FilterCubit>();


  Future<void> _fetchEvents() async {
    
    _eventBloc.add(const EventEvent.fetchEvents());
  }
}
