import 'package:get/get.dart';

import '../../../data/models/predict_model.dart';

class DetailController extends GetxController {
  final Rx<PredictModel> arguments = (Get.arguments as PredictModel).obs;
}
