import 'dart:developer';

import 'package:get/get.dart';

import '../../../data/local/session.dart';
import '../../../data/repository/plant_repository.dart';

class HomeController extends GetxController {
  var name = "".obs;
  var dataPlants = [].obs;
  var updated = "".obs;

  Future<String> getInitialName() async {
    String fullName = await Session.getName();
    List<String> nameParts = fullName.split(' ');
    if (nameParts.length >= 2) {
      String firstName = nameParts[0];
      String lastName = nameParts[1];

      String firstInitial = firstName.isNotEmpty ? firstName[0] : '';
      String lastInitial = lastName.isNotEmpty ? lastName[0] : '';
      name.value = firstInitial + lastInitial;
    }
    return name.value;
  }

  void getPlants() async {
    var result = await PlantRepository.getplants();
    if (result != null) {
      dataPlants.assignAll(result.data!);
      updated.value = "25/09/2023";
    }
  }

  @override
  void onInit() async {
    getPlants();
    await getInitialName();
    super.onInit();
  }
}
