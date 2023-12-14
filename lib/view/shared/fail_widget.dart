import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/extensions/context_extensions.dart';

class FailWidget extends StatelessWidget {
  const FailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: context.paddingLow,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7),
          borderRadius: context.borderLow,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error,
              color: Colors.white,
              size: 48,
            ),
            const SizedBox(height: 8),
            Text(
              LocaleKeys.common_fail.tr(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
