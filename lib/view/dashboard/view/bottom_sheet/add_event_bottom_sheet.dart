import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/constants/index.dart';
import 'package:ieee_event_app/core/enums/index.dart';
import 'package:ieee_event_app/core/extensions/index.dart';
import 'package:ieee_event_app/core/helpers/logger.dart';
import 'package:ieee_event_app/core/mixins/validator_mixins.dart';
import 'package:ieee_event_app/logic/models/event_model.dart';
import 'package:ieee_event_app/logic/models/user_model.dart';
import 'package:ieee_event_app/logic/services/image_service.dart';
import 'package:ieee_event_app/view/shared/components/custom_button.dart';
import 'package:ieee_event_app/view/shared/components/custom_drop_down.dart';
import 'package:ieee_event_app/view/shared/components/custom_text_field.dart';

class AddEventBottomSheet extends StatelessWidget with ValidatorsMixins {
  AddEventBottomSheet({
    super.key,
  });

  late final UserModel user;

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  ECommittees? _selectedCommittee;
  final ValueNotifier<bool> _willShowImage = ValueNotifier(false);
  final ValueNotifier<DateTime?> _selectedDate = ValueNotifier(null);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _selectedImageFile = '';

  Future<void> _selectAndUploadImage(BuildContext context) async {
    final imageFile = await ImageService().pickImageFromGallery();
    if (imageFile != null) {
      final imageUrl = await ImageService().uploadImageToFirebase(imageFile);
      if (imageUrl != null) {
        _selectedImageFile = imageUrl;
        _willShowImage.value = true;
      } else {
        logger.d('Image upload failed');
      }
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final picked = await showDatePicker(
      context: context,
      barrierColor: ColorConstants.backgroundColor,
      initialDate: _selectedDate.value ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != _selectedDate.value) {
      _selectedDate.value = picked;
    }
  }

  @override
  Widget build(BuildContext context) {
    user = context.userCredentials;
    final userRole = user.role == EUserRole.admin
        ? EUserRole.admin
        : UserRoleConstants.getCommitteeFromEmail(email: user.email!);
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: ColorConstants.backgroundColor,
        ),
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                controller: _titleController,
                validator: isNotEmpty,
                text: LocaleKeys.home_eventModel_title.tr(),
              ),
              context.sizedBoxNormal,
              CustomTextField(
                controller: _descriptionController,
                validator: isNotEmpty,
                text: LocaleKeys.home_eventModel_description.tr(),
              ),
              context.sizedBoxNormal,
              CustomTextField(
                controller: _locationController,
                validator: isNotEmpty,
                text: LocaleKeys.home_eventModel_location.tr(),
              ),
              context.sizedBoxNormal,
              if (userRole == EUserRole.admin) ...[
                CustomDropdownButton(
                  selectedCommittee: _selectedCommittee,
                  onChanged: (value) {
                    _selectedCommittee = value;
                  },
                ),
                context.sizedBoxNormal,
              ] else
                const SizedBox(),
              Row(
                children: [
                  CustomButton(
                    onPressed: () => _selectAndUploadImage(context),
                    text: LocaleKeys.home_eventModel_image.tr(),
                  ),
                  ValueListenableBuilder<bool>(
                    valueListenable: _willShowImage,
                    builder: (context, value, child) {
                      if (value == true) {
                        return Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(15)),
                          ),
                          child: Image.network(
                            _selectedImageFile,
                          ),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                ],
              ),
              context.sizedBoxNormal,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton.small(
                    onPressed: () => _selectDate(context),
                    text: LocaleKeys.home_eventModel_date.tr(),
                  ),
                  ValueListenableBuilder<DateTime?>(
                    valueListenable: _selectedDate,
                    builder: (context, value, child) {
                      return value != null
                          ? Text(
                              DateFormatExtension(date: value)
                                  .dateFormatDayNumMonthYear,
                            )
                          : const SizedBox.shrink();
                    },
                  ),
                ],
              ),
              context.sizedBoxNormal,
              CustomButton.large(
                onPressed: () {
                  if (_formKey.currentState?.validate() != true) return;
                  final event = EventModel(
                    title: _titleController.text,
                    description: _descriptionController.text,
                    date: _selectedDate.value ?? DateTime.now(),
                    location: _locationController.text,
                    image: _selectedImageFile,
                    committee: _selectedCommittee ?? userRole as ECommittees,
                  );
                  Modular.to.pop(event);
                },
                text: LocaleKeys.home_add_event.tr(),
              ),
              const SizedBox(height: 20),
            ],
          ),
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
