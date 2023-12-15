part of 'profile_view.dart';

mixin ProfileViewMixin on State<ProfileView> {
  Future<void> _signOut() async {
    context.get<UserBloc>().add(const UserEvent.unregisterUser());
  }
}
