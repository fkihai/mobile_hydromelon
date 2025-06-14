import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/modules/history/views/history_view.dart';
import 'package:mobile_hydromelon/apps/modules/informations/views/informations_view.dart';
import 'package:mobile_hydromelon/apps/modules/predict/views/predict_views.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                PredictPage(),
                const HistoryView(),
                const InformationsView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            selectedItemColor: Colors.green.shade500,
            items: [
              _bottomNavigationBarItem(icon: Icons.home, label: "Home"),
              _bottomNavigationBarItem(icon: Icons.history, label: "History"),
              _bottomNavigationBarItem(icon: Icons.info, label: "About"),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({
    required IconData icon,
    required String label,
  }) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("My Widget"),
      ),
    );
  }
}
