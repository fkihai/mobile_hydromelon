import 'dart:developer';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'package:image_picker/image_picker.dart';
import '../../../data/models/predict_model.dart';
import '../../../data/repository/predict_repository.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/widget/snackbar.dart';

class PredictController extends GetxController {
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
      snackbar(title: "Image Not Found", message: "Insert image first!");
    }
    try {
      isLoading.value = true;
      PredictModel? predictResponse = await PredictRepository.predict(
        file: imageFile.value!,
      );
      if (predictResponse == null) {
        snackbar(title: "Prediction Failed", message: "Check Your Image.");
      } else {
        clearImage();
        Get.toNamed(Routes.detail, arguments: predictResponse);
      }
    } catch (e) {
      if (kDebugMode) {
        log(e.toString(), name: "MEDIA UPLOAD CONTROLLER");
      }
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    clearImage();
  }
}
