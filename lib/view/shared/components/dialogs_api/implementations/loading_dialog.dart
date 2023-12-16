import 'package:flutter/material.dart';
import 'package:ieee_event_app/view/shared/components/dialogs_api/overlay_controller.dart';


void showLoadingDialog(BuildContext context, [String? loadingStatusMessage]) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeLoading(
      message: loadingStatusMessage,
    ),
  );
}
