import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/data/models/auth_model.dart';

import '../../../data/local/session.dart';
import '../../../data/repository/auth_repository.dart';
import '../../../routes/app_pages.dart';

class SinginController extends GetxController {
  final isHidePassword = true.obs;
  final isLoading = false.obs;
  final isloginFailed = false.obs;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void doLogin() async {
    isLoading.value = true;
    try {
      AuthModel? loginResponse = await AuthRepositroy.login(
        email: emailController.text,
        password: passwordController.text,
      );

      if (loginResponse != null && loginResponse.token != null) {
        await Session.saveSession(
          token: "${loginResponse.token}",
          refreshToken: "${loginResponse.refreshToken}",
        );
        Get.offAndToNamed(Routes.HOME);
        isLoading.value = false;
        isloginFailed.value = false;
      }
    } catch (e) {
      isLoading.value = false;
      isloginFailed.value = true;
    }
  }

  Future isLogin() async {
    if (await Session.checkLogin()) {
      Get.offAndToNamed(Routes.HOME);
    }
  }
}
