import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/view/shared/index.dart';

class TemplateSplashView<B extends StateStreamable<S>, S>
    extends StatefulWidget {
  const TemplateSplashView({
    required this.onStateChange,
    required this.onFetch,
    required this.onError,
    super.key,
  });

  final void Function(S state) onStateChange;
  final void Function() onFetch;
  final Exception? Function(S s) onError;

  @override
  State<TemplateSplashView<B, S>> createState() =>
      _TemplateSplashViewState<B, S>();
}

class _TemplateSplashViewState<B extends StateStreamable<S>, S>
    extends State<TemplateSplashView<B, S>> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), widget.onFetch);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, S>(
      bloc: context.get<B>(),
      listener: (context, state) {
        widget.onStateChange(state);
      },
      builder: (context, state) {
        final error = widget.onError(state);
        if (error != null) {
          return const FailWidget();
        }
        return const Scaffold(
          body: LoadingWidget(),
        );
      },
    );
  }
}
