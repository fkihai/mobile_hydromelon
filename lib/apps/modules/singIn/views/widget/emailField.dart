import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../controllers/singin_controller.dart';

class EmailField extends GetView<SinginController> {
  const EmailField({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0.dm),
        color: Colors.grey[100],
      ),
      child: Row(
        children: [
          Icon(
            Icons.email_outlined,
            size: 20.r,
            color: Colors.grey,
          ),
          Expanded(
            child: Center(
              child: TextField(
                controller: controller.emailController,
                style: TextStyle(fontSize: 14.sp),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8.dm),
                  isDense: true,
                  hintText: "Email Address",
                  hintStyle: TextStyle(fontSize: 12.sp),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
