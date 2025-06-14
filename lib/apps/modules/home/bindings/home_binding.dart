import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/modules/history/controllers/history_controller.dart';

import '../../predict/controllers/predict_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<PredictController>(() => PredictController());
    Get.lazyPut<HistoryController>(() => HistoryController());
  }
}
