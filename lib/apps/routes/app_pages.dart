import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/modules/home/bindings/home_binding.dart';
import 'package:mobile_hydromelon/apps/modules/home/views/home_view.dart';

import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/imagePage/bindings/image_page_binding.dart';
import '../modules/imagePage/views/image_page_view.dart';
import '../modules/predict/bindings/predict_binding.dart';
import '../modules/predict/views/predict_views.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/singIn/bindings/singin_binding.dart';
import '../modules/singIn/views/singin_view.dart';
import '../modules/singUp/bindings/singup_binding.dart';
import '../modules/singUp/views/singup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SINGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => MediaUploadPage(),
      binding: PredictBindings(),
    ),
    GetPage(
      name: _Paths.SINGIN,
      page: () => const SinginView(),
      binding: SinginBinding(),
    ),
    GetPage(
      name: _Paths.SINGUP,
      page: () => const SingupView(),
      binding: SingupBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.IMAGE_PAGE,
      page: () => const ImagePageView(),
      binding: ImagePageBinding(),
    ),
  ];
}
