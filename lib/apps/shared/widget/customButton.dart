import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../modules/singIn/controllers/singin_controller.dart';

class CustomButton extends GetView<SinginController> {
  const CustomButton({
    super.key,
    required this.title,
    this.onPressed,
    this.enabled = true,
    this.color = Colors.green,
  });
  final void Function()? onPressed;
  final String title;
  final bool enabled;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        color: enabled ? color : Colors.grey.shade600,
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
