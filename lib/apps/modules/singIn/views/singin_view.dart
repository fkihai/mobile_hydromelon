import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import '../../../shared/widget/loadingBaground.dart';
import '../../../shared/widget/logoBottom.dart';
import '../controllers/singin_controller.dart';
import '../../../shared/widget/customButton.dart';
import 'widget/emailField.dart';
import 'widget/passwordField.dart';

class SinginView extends GetView<SinginController> {
  const SinginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.w,
            vertical: 15.h,
          ),
          child: Obx(
            () => Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      Assets.img.logo.path,
                      width: 50,
                    ),
                    SizedBox(height: 50.h),
                    const Text(
                      "Welcome back. \nLet's check your plants",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    SizedBox(height: 100.h),
                    controller.isloginFailed.value
                        ? const Text(
                            'Login Failed. Check your email and password',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.red,
                            ),
                          )
                        : Container(),
                    SizedBox(height: 10.h),
                    const EmailField(),
                    SizedBox(height: 20.h),
                    const PasswordField(),
                    SizedBox(height: 70.h),
                    CustomButton(
                      title: 'login',
                      onPressed: () async {
                        controller.doLogin();
                      },
                    ),
                    const Spacer(),
                    const LogoBottom(),
                  ],
                ),
                controller.isLoading.value
                    ? const LoadingBaground()
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
