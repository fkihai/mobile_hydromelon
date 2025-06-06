import 'package:get/get.dart';

import '../../../data/repository/plant_repository.dart';

class HistoryController extends GetxController {
  final Map<String, dynamic> arguments = Get.arguments;
  var dataHistory = [].obs;
  var idTanaman = 0.obs;
  var isLoading = false.obs;

  void getHistory() async {
    isLoading.value = true;
    idTanaman.value = arguments['id'];
    var result = await PlantHistory.getHistory(idTanaman.value);
    if (result != null) {
      dataHistory.assignAll(result.data!);
      isLoading.value = false;
      // log(dataHistory[1].attributes!.name.toString(), name: 'HISTORY');
    }
  }

  @override
  void onInit() {
    getHistory();
    super.onInit();
  }
}
