import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../controllers/singin_controller.dart';

class ButtonLogin extends GetView<SinginController> {
  const ButtonLogin({super.key, required this.title, this.onPressed});
  final Future<void> Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.green[300],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
