import 'package:get/get.dart';

import '../../predict/controllers/predict_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<PredictController>(() => PredictController());
  }
}
