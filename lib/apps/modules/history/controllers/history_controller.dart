import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/data/models/predict_model.dart';
import 'package:mobile_hydromelon/apps/data/repository/predict_repository.dart';

class HistoryController extends GetxController {
  final isLoading = false.obs;
  final data = <PredictModel>[].obs;

  Future<void> fetchData() async {
    try {
      isLoading.value = true;
      final response = await PredictRepository.history();
      data.assignAll(response!);
    } catch (e) {
      if (kDebugMode) {
        print("❌ Error fetching data: $e");
      }
      isLoading.value = false;
    } finally {
      isLoading.value = false;
    }
  }

  // var dataHistory = [].obs;
  // var idTanaman = 0.obs;
  // var isLoading = false.obs;

  // void getHistory() async {
  //   isLoading.value = true;
  //   idTanaman.value = arguments['id'];
  //   var result = await PlantHistory.getHistory(idTanaman.value);
  //   if (result != null) {
  //     dataHistory.assignAll(result.data!);
  //     isLoading.value = false;
  //     // log(dataHistory[1].attributes!.name.toString(), name: 'HISTORY');
  //   }
  // }
}
