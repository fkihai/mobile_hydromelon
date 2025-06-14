import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/modules/home/bindings/home_binding.dart';
import 'package:mobile_hydromelon/apps/modules/home/views/home_view.dart';

import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/predict/bindings/predict_binding.dart';
import '../modules/predict/views/predict_views.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/singIn/bindings/singin_binding.dart';
import '../modules/singIn/views/singin_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.singin;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.signIn,
      page: () => const SinginView(),
      binding: SinginBinding(),
    ),
    GetPage(
      name: _Paths.predict,
      page: () => PredictPage(),
      binding: PredictBindings(),
    ),
    GetPage(
      name: _Paths.detail,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.history,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.profile,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
