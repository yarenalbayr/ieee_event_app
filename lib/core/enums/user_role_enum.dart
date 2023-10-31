///App has 3 user roles (user, committee, admin).
///user is the default role,
///committee is the role for the head of the committee,
///admin is the role for the head of the ieee management council
enum EUserRole {
  user,
  committee,
  admin;

  static EUserRole fromString(String name) {
    switch (name) {
      case 'user':
        return EUserRole.user;
      case 'committee':
        return EUserRole.committee;
      case 'admin':
        return EUserRole.admin;
      default:
        return EUserRole.user;
    }
  }
}

extension UserRoleExtension on EUserRole {
  String get name {
    switch (this) {
      case EUserRole.user:
        return 'user';
      case EUserRole.committee:
        return 'committee';
      case EUserRole.admin:
        return 'admin';
    }
  }
}
