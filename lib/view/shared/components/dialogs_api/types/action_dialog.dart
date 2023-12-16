part of '../overlay_controller.dart';

class _GenericMessageDialog extends StatelessWidget {
  const _GenericMessageDialog({
    required this.title,
    this.description,
    this.actions = const [],
  });
  final String title;
  final String? description;
  final List<DialogAction> actions;

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      final style = Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: Colors.grey.withAlpha(180),
          );
      return CupertinoAlertDialog(
        title: Text(title),
        content: description != null ? Text(description!) : null,
        actions: [
          if (actions.isEmpty)
            CupertinoDialogAction(
              isDefaultAction: true,
              onPressed: () {
                InScreenOverlay.instance().hide();
              },
              textStyle: style,
              child: const Text(
                'Close',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ...actions.map((action) {
            return CupertinoDialogAction(
              onPressed: () {
                InScreenOverlay.instance().hide();
                action.onPressed?.call();
              },
              textStyle: style,
              child: Text(
                action.text,
                style: const TextStyle(color: Colors.white),
              ),
            );
          }),
        ],
      );
    }

    final style = Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Colors.white.withAlpha(180),
        );

    return AlertDialog(
      title: Text(title),
      content: description != null ? Text(description!) : null,
      actions: [
        if (actions.isEmpty)
          TextButton(
            onPressed: () {
              InScreenOverlay.instance().hide();
            },
            child: Text('Close', style: style),
          ),
        ...actions.map((action) {
          return TextButton(
            onPressed: () {
              InScreenOverlay.instance().hide();
              action.onPressed?.call();
            },
            child: Text(action.text, style: style),
          );
        }),
      ],
    );
  }
}
