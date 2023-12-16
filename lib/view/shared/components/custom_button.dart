// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/constants/color_constants.dart';
import 'package:ieee_event_app/core/constants/theme/theme.dart';
import 'package:ieee_event_app/core/extensions/index.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onPressed,
    super.key,
    this.text,
    this.icon,
    this.padding,
    this.width,
    this.height,
  });
  const CustomButton.large({
    required this.onPressed,
    super.key,
    this.text,
    this.icon,
    this.padding,
    this.width = double.infinity,
    this.height = 48,
  });

  const CustomButton.small({
    required this.onPressed,
    super.key,
    this.text,
    this.icon,
    this.padding,
    this.width,
    this.height,
  });
  final VoidCallback onPressed;
  final String? text;
  final Widget? icon;
  final EdgeInsets? padding;

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorConstants.primary.withOpacity(0.9),
        padding: padding,
        minimumSize:
            (width != null && height != null) ? Size(width!, height!) : null,
        shape: RoundedRectangleBorder(
          borderRadius: context.borderHigh,
          side: BorderSide(
            color: ColorConstants.textColorLight.withOpacity(0.2),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[icon!, const SizedBox(width: 8)],
          if (text != null)
            Flexible(
              child: Text(
                text!,
                style: context.textTheme.bodySmall
                    ?.copyWith(fontWeight: FontWeight.w700),
                overflow: TextOverflow.fade,
              ),
            ),
        ],
      ),
    );
  }
}
