part of '../overlay_controller.dart';

class _LoadingDialog extends StatelessWidget {
  const _LoadingDialog(this.text);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return const LoadingWidget();
  }
}
