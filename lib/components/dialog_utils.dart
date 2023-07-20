import 'package:flutter/material.dart';
import 'package:restaurant_app/components/loading_dialog.dart';

class DialogUtils {
  final BuildContext context;

  const DialogUtils({required this.context});

  void showLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const LoadingDialog();
      },
    );
  }

  void hideLoading() {
    Navigator.of(context).pop();
  }
}
