part of 'login_view.dart';

mixin LoginViewMixin on State<LoginView>{
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final ValueNotifier<bool> _willShowPassword = ValueNotifier<bool>(false);


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
