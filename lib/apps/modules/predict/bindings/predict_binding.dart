import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/modules/history/controllers/history_controller.dart';

import '../controllers/predict_controller.dart';

class PredictBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PredictController>(() => PredictController());
    Get.lazyPut<HistoryController>(() => HistoryController());
  }
}
