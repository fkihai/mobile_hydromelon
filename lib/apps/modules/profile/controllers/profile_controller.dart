import 'package:get/get.dart';

import '../../../data/local/session.dart';
import '../../../routes/app_pages.dart';

class ProfileController extends GetxController {
  var name = "".obs;
  var fullname = "".obs;

  Future<String> getInitialName() async {
    String fullName = await Session.getName();
    fullname.value = fullName;
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

  Future doLogout() async {
    await Session.clearSession();
    Get.offAllNamed(Routes.singin);
  }

  @override
  void onInit() async {
    await getInitialName();
    super.onInit();
  }
}
