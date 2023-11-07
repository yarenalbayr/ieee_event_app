import 'package:flutter/material.dart';

mixin LoadingMixin<T extends StatefulWidget> on State<T> {
  final ValueNotifier<bool> _isLoading = ValueNotifier<bool>(false);

  bool get isLoading => _isLoading.value;

  void changeLoading() {
    _isLoading.value = !_isLoading.value;
  }
}
