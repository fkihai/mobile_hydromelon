import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/modules/history/controllers/history_controller.dart';

class HomeController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
    if (tabIndex == 1) {
      if (Get.isRegistered<HistoryController>()) {
        Get.find<HistoryController>().fetchData();
      }
    }
  }
}
