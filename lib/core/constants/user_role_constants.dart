import 'package:ieee_event_app/core/enums/comitee_enum.dart';
import 'package:ieee_event_app/core/enums/user_role_enum.dart';

/// Check user role from email and return [EUserRole]
/// get committee from email and return [ECommittees]
final class UserRoleConstants {
  UserRoleConstants._();
  static const String _email = '@ieee.com';

  static List<String> get _comitteeEmails => List.from(
        ECommittees.values.map((e) => '${e.name.toLowerCase()}$_email'),
      );
  static ECommittees getCommitteeFromEmail({required String email}) {
    return ECommittees.values.firstWhere(
      (e) => '${e.name.toLowerCase()}$_email' == email,
    );
  }

  static String get _adminEmail => 'admin$_email';

  static EUserRole checkUserRole({required String? email}) {
    if (email == null) return EUserRole.user;
    return (email == _adminEmail)
        ? EUserRole.admin
        : (_comitteeEmails.contains(email)
            ? EUserRole.committee
            : EUserRole.user);
  }
}
//TODO: adding passwords too for controlling, encrypt the data
