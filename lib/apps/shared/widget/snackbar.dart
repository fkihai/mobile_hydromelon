import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController snackbar({required title, required message}) {
  return Get.snackbar(
    title,
    message,
    barBlur: 10.0,
    overlayColor: Colors.green.withOpacity(0.3),
    snackPosition: SnackPosition.TOP,
    borderRadius: 12,
    margin: const EdgeInsets.all(16),
    backgroundColor: Colors.green.withOpacity(0.1),
  );
}
