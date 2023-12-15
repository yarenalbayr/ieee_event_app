import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ieee_event_app/core/navigation/navigation_extension.dart';
import 'package:ieee_event_app/view/shared/fail_widget.dart';
import 'package:ieee_event_app/view/shared/loading_widget.dart';

class CustomStateListener<B extends StateStreamable<S>, S>
    extends StatelessWidget {
  const CustomStateListener({
    required this.loadingState,
    required this.child,
    this.errorState,
    this.listener,
    super.key,
    this.successState,
  });

  final Widget child;
  final Exception? Function(S s)? errorState;
  final S? Function(S s) loadingState;
  final S? Function(S s)? successState;
  final void Function(BuildContext context, S state)? listener;

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<B>();
    return BlocListener<B, S>(
      bloc: bloc,
      listenWhen: (previous, current) {
        if (previous == current) return false;

        final currIsLoading = loadingState(current) != null;
        if (currIsLoading) {
          log('${B.runtimeType} Putting loading');
          const LoadingWidget();
          return true;
        }

        final error = errorState?.call(current);
        final currIsError = error != null;
        final currIsSuccess = successState?.call(current) != null;

        if (currIsError) {
          log('${B.runtimeType} Putting error dialog');
          const FailWidget();
          return true;
        }

        final prevIsError = errorState?.call(previous) != null;
        final prevIsLoading = loadingState(previous) != null;

        if (prevIsError || prevIsLoading) {
          log('${B.runtimeType} Removing dialog');

        }

        if (successState != null && (prevIsLoading && currIsSuccess)) {
          log('${B.runtimeType} Putting success dialog');
          return true;
        }

        return true;
      },
      listener: listener ?? (context, state) {},
      child: child,
    );
  }
}
