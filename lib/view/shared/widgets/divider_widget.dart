import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/constants/color_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: ColorConstants.textColorLight.withOpacity(0.3),
      indent: 12,
      endIndent: 12,
      thickness: 0.5,
    );
  }
}
