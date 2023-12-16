import 'package:flutter/material.dart';
import 'package:ieee_event_app/view/shared/components/dialogs_api/overlay_controller.dart';

void showMessageDialog(
  BuildContext context, {
  required String title,
  String? description,
  List<DialogAction>? actions,
}) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      title: title,
      description: description,
      actions: actions ?? [],
    ),
  );
}
