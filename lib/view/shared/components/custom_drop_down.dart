import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/constants/color_constants.dart';
import 'package:ieee_event_app/core/enums/comitee_enum.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    super.key,
    this.selectedCommittee,
    this.onChanged,
  });
  final ECommittees? selectedCommittee;
  final Function(ECommittees?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<ECommittees>(
      decoration: InputDecoration(
        labelText: LocaleKeys.home_eventModel_comittee.tr(),
        labelStyle: Theme.of(context).textTheme.bodyMedium,
        filled: true,
        fillColor: ColorConstants
            .formColor, // Define this color in your color constants
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8), // Adjust the radius as needed
          borderSide: BorderSide.none,
        ),
      ),
      value: selectedCommittee,
      items: ECommittees.values.map((ECommittees committee) {
        return DropdownMenuItem<ECommittees>(
          value: committee,
          child: Text(
            committee.toString().split('.').last.toUpperCase(),
            style: Theme.of(context).textTheme.bodyMedium,
          ), // Displays the enum value as a string
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
