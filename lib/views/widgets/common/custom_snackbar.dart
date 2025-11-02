import 'package:flutter/material.dart';

/// Custom snackbar utility
class CustomSnackbar {
  static void show(
    BuildContext context, {
    required String message,
    bool isError = false,
    Duration duration = const Duration(seconds: 3),
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? Colors.red : Colors.green,
        duration: duration,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  static void showSuccess(BuildContext context, String message) {
    show(context, message: message, isError: false);
  }

  static void showError(BuildContext context, String message) {
    show(context, message: message, isError: true);
  }
}
