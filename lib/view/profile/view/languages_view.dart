import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/configurations/localization/localization.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/cubits/localization_cubit.dart';
import 'package:ieee_event_app/view/profile/view/profile_view.dart';
import 'package:ieee_event_app/view/shared/widgets/divider_widget.dart';

class LanguagesView extends StatefulWidget {
  const LanguagesView({super.key});

  @override
  State<LanguagesView> createState() => _LanguagesViewState();
}

class _LanguagesViewState extends State<LanguagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.profile_languages.tr()),
      ),
      body: ListView(
        children: <Widget>[
          ProfileListTile(
            title: LocaleKeys.profile_english.tr(),
            onTap: () {
              context
                  .get<LocalizationCubit>()
                  .changeLanguage(AppLanguages.en, context);
            },
          ),
          const CustomDivider(),
          ProfileListTile(
            title: LocaleKeys.profile_turkish.tr(),

            onTap: () {
              context
                  .get<LocalizationCubit>()
                  .changeLanguage(AppLanguages.tr, context);
            },
          ),
        ],
      ),
    );
  }
}
