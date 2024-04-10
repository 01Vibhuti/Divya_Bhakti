import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customSnackBar {
  static snackbar({
    String? title,
    String? Message,
    Color? Bgcolor,
    SnackPosition ? position
  }) {
    return Get.snackbar(
      '${title}',
      '${Message}',
      snackPosition: position,
      backgroundColor: Bgcolor
    );
  }
}
