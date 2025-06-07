import 'package:get/get.dart';

import '../../../data/models/predict_model.dart';

class DetailController extends GetxController {
  late Rx<PredictModel> arguments;

  @override
  void onInit() {
    super.onInit();
    arguments = (Get.arguments as PredictModel).obs;
  }
}
