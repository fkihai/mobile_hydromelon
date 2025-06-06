import 'package:get/get.dart';

import '../controllers/predict_controller.dart';

class PredictBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MediaUploadController>(
      () => MediaUploadController(),
    );
  }
}
