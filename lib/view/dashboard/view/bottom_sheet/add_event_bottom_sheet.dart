import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/constants/color_constants.dart';
import 'package:ieee_event_app/core/enums/comitee_enum.dart';
import 'package:ieee_event_app/core/extensions/index.dart';
import 'package:ieee_event_app/logic/models/event_model.dart';
import 'package:ieee_event_app/view/shared/components/custom_button.dart';
import 'package:ieee_event_app/view/shared/components/custom_text_field.dart';

class AddEventBottomSheet extends StatelessWidget {
  AddEventBottomSheet({
    super.key,
  });
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: ColorConstants.backgroundColor,
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(controller: titleController, text: 'text'),
            context.sizedBoxNormal,
            CustomTextField(controller: descriptionController, text: 'text'),
            
            const SizedBox(height: 20),
            CustomButton.large(
              onPressed: () {
                final event = EventModel(
                  title: 'TITLE',
                  description: 'descriptionController',
                  date: DateTime.now(),
                  location: '',
                  image: '',
                  committee: ECommittees.aess,
                );
                Modular.to.pop(event);
              },
              text: LocaleKeys.home_add_event.tr(),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

extension AddEventSheetExtension on AddEventBottomSheet {
  static Future<EventModel?> showSheet(BuildContext context) {
    return showModalBottomSheet<EventModel>(
      context: context,
      isScrollControlled: true,
      builder: (context) => AddEventBottomSheet(),
    );
  }
}
