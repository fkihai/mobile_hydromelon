import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:mobile_hydromelon/apps/data/models/predict_model.dart';
import 'package:mobile_hydromelon/apps/data/repository/predict_repository.dart';

import '../../../routes/app_pages.dart';

class MediaUploadController extends GetxController {
  final Rx<File?> imageFile = Rx<File?>(null);
  final ImagePicker picker = ImagePicker();
  final isLoading = false.obs;

  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(
      source: source,
      maxWidth: 800,
      maxHeight: 800,
    );

    if (pickedFile != null) {
      imageFile.value = File(pickedFile.path);
    }
  }

  void clearImage() {
    imageFile.value = null;
  }

  void uploadImage() async {
    if (imageFile.value == null) {
      Get.snackbar("Image Not Found", "Insert image first!");
    }
    try {
      isLoading.value = true;
      PredictModel? predictResponse = await PredictRepository.predict(
        file: imageFile.value!,
      );
      if (predictResponse == null) {
        Get.snackbar("Prediction Failed", "No response from server.");
      } else {
        Get.toNamed(Routes.DETAIL, arguments: predictResponse);
      }
    } catch (e) {
      if (kDebugMode) {
        log(e.toString(), name: "MEDIA UPLOAD CONTROLLER");
      }
    } finally {
      isLoading.value = false;
    }
  }
}
