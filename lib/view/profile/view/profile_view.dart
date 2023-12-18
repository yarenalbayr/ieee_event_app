import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ieee_event_app/core/configurations/localization/locale_keys.g.dart';
import 'package:ieee_event_app/core/constants/theme/theme.dart';
import 'package:ieee_event_app/core/extensions/index.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/logic/blocs/cubits/localization_cubit.dart';
import 'package:ieee_event_app/logic/blocs/user/user_bloc.dart';
import 'package:ieee_event_app/view/dashboard/core/dashboard_module.dart';
import 'package:ieee_event_app/view/shared/widgets/divider_widget.dart';

part 'profile_view_mixin.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> with ProfileViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalizationCubit, LocalizationState>(
      bloc: context.get<LocalizationCubit>(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(LocaleKeys.common_profile.tr()),
          ),
          body: ListView(
            children: <Widget>[
              const ProfileHeader(),
              ProfileListTile(
                title: LocaleKeys.profile_my_events.tr(),
                icon: Icons.event_rounded,
                onTap: () {
                  // Navigate to My Events page or display events
                },
              ),
              const CustomDivider(),
              ProfileListTile(
                title: LocaleKeys.profile_languages.tr(),
                icon: Icons.language_rounded,
                onTap: () {
                  Modular.to.pushNamed(DashboardRoutes.language);
                },
              ),
              const CustomDivider(),
              ProfileListTile(
                title: LocaleKeys.profile_sign_out.tr(),
                icon: Icons.logout,
                onTap: _signOut,
              ),
            ],
          ),
        );
      },
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = context.userCredentialsOrNull;
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              'assets/images/profile_pic.png',
            ),
          ),
          const SizedBox(height: 8),
          Text(
            user?.name ?? '',
            style: context.textTheme.headlineMedium,
          ),
          Text(
            user?.email ?? '',
            style: context.textTheme.bodySmall,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    required this.title,
    required this.onTap,
    this.icon,
    super.key,
  });
  final String title;
  final IconData? icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon != null ? Icon(icon, color: Colors.white) : null,
      title: Text(
        title,
        style: context.textTheme.bodyMedium,
      ),
      onTap: onTap,
    );
  }
}
