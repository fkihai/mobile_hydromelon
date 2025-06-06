import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ImagePageController extends GetxController {
  final Map<String, dynamic> arguments = Get.arguments;
  var counter = 0.obs;
  var date = ''.obs;

  void convertDate(String inputDate) {
    List<String> dateParts = inputDate.split('/');
    int day = int.parse(dateParts[0]);
    int month = int.parse(dateParts[1]);
    int year = int.parse(dateParts[2]);

    DateTime formattedDate = DateTime(year, month, day);

    String formattedDateString =
        "${formattedDate.day.toString().padLeft(2, '0')}-${formattedDate.month.toString().padLeft(2, '0')}-${formattedDate.year}";

    date.value = formattedDateString;
  }

  void getTime() {
    DateTime currentTime = DateTime.now();
    String formatedTime = DateFormat('dd-MM-yyyy').format(currentTime);
    date.value = formatedTime;
  }

  @override
  void onInit() {
    convertDate(arguments['date']);
    super.onInit();
  }
}
