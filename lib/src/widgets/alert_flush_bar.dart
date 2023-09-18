import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class AlertFlushBar {
  AlertFlushBar._();

  static void buildErrorSnackbar(BuildContext context, String message) {
    Flushbar(
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 3),
      message: message,
      flushbarStyle: FlushbarStyle.FLOATING,
      icon: const Padding(
        padding: EdgeInsets.only(
          left: 12,
        ),
        child: Icon(
          Icons.warning,
          color: Colors.red,
          size: 14,
        ),
      ),
    ).show(context);
  }

  static void buildSuccessSnackbar(BuildContext context, String message) {
    Flushbar(
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 3),
      message: message,
      flushbarStyle: FlushbarStyle.FLOATING,
      icon: const Padding(
        padding: EdgeInsets.only(
          left: 12,
        ),
        child: Icon(
          Icons.check,
          color: Colors.green,
          size: 14,
        ),
      ),
    ).show(context);
  }
}
