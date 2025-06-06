import 'package:get/get.dart';

import '../controllers/image_page_controller.dart';

class ImagePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePageController>(
      () => ImagePageController(),
    );
  }
}
