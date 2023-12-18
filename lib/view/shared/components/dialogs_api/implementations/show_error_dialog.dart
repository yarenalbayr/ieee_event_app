import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/view/shared/components/dialogs_api/overlay_controller.dart';

void showErrorDialog(
  BuildContext context,
  Exception error,
) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      title: 'Error',
      description: LocaleKeys.common_fail.tr(),
      actions: const [],
    ),
  );
}
