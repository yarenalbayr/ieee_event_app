import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/constants/index.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/cubits/filter_cubit.dart';
import 'package:ieee_event_app/logic/blocs/event/event_bloc.dart';
import 'package:ieee_event_app/logic/models/event_model.dart';
import 'package:ieee_event_app/view/home/view/widgets/comittee_list_view.dart';
import 'package:ieee_event_app/view/home/view/widgets/events_list.dart';
import 'package:ieee_event_app/view/shared/fail_widget.dart';
import 'package:ieee_event_app/view/shared/loading_widget.dart';

part 'home_view_mixin.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _filterCubit,
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0,
          backgroundColor: ColorConstants.backgroundColor,
          title: Text(LocaleKeys.common_home.tr()),
        ),
        body: BlocConsumer<EventBloc, EventState>(
          bloc: _eventBloc,
          listener: (context, state) {
            state.mapOrNull(
              initial: (_) async => _fetchEvents(),
              loading: (_) async => _fetchEvents(),
              updated: (_) async => _fetchEvents(),
              uploaded: (_) async => _fetchEvents(),
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              error: (Exception e) => const FailWidget(),
              orElse: () => const LoadingWidget(),
              fetched: (List<EventModel> events) {
                _filterCubit.setAllEvents(events);
                return const Column(
                  children: [
                    ComitteesListView(),
                    EventList(),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
