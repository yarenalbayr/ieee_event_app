import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_event_app/core/constants/index.dart';
import 'package:ieee_event_app/core/enums/comitee_enum.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/cubits/filter_cubit.dart';

class ComitteesListView extends StatelessWidget {
  const ComitteesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final selectedCommittee =
        context.watch<FilterCubit>().state.selectedCommittee;

    return SizedBox(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: ECommittees.values.map((committee) {
          // Determine if this committee is the selected one
          final isSelected = committee == selectedCommittee;

          return GestureDetector(
            onTap: () {
              context.get<FilterCubit>().filterByCommittee(committee);
            },
            onLongPress: () => context.get<FilterCubit>().clearFilter(),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: ColorConstants.primary.withOpacity(0.2),
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  committee.name,
                  style: TextStyle(
                    color: isSelected
                        ? ColorConstants.primary
                        : ColorConstants.textColorLight,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
