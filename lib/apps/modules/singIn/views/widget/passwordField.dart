import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../controllers/singin_controller.dart';

class PasswordField extends GetView<SinginController> {
  const PasswordField({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0.r),
        color: Colors.grey[100],
      ),
      child: Obx(
        () => Row(
          children: [
            Icon(
              Icons.lock,
              size: 20.r,
              color: Colors.grey,
            ),
            Expanded(
              child: Center(
                child: TextField(
                  controller: controller.passwordController,
                  obscureText: controller.isHidePassword.value,
                  style: TextStyle(fontSize: 14.sp),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8.dm),
                    isDense: true,
                    hintText: "password",
                    hintStyle: TextStyle(fontSize: 12.sp),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                controller.isHidePassword.value =
                    !controller.isHidePassword.value;
              },
              child: Icon(
                controller.isHidePassword.value
                    ? Icons.visibility
                    : Icons.visibility_off,
                size: 20.r,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
