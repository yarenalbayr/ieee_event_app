import 'package:ieee_event_app/core/enums/comitee_enum.dart';
import 'package:ieee_event_app/core/enums/user_role_enum.dart';


final class UserRoleConstants {
  UserRoleConstants._();
  static const String _email = '@ieee.org';

  static List<String> get _comitteeEmails =>
      List.from(ECommittees.values.map((e) => '{e.name}$_email'));
      
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
