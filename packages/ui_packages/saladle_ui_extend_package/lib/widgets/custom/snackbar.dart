import 'package:flutter/material.dart';

showToast(
    {required String message,
    IconData? icon,
    Widget? value,
    Widget? longValue,
    IconData? iconAction,
    bool hideIconAction = false,
    Function? callback}) {
  SnackBar(
    content: const Text('Email deleted'),
    action: SnackBarAction(
      label: 'Undo',
      textColor: Colors.white,
      onPressed: () {},
    ),
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    backgroundColor: Colors.blue,
  );
}
