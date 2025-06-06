import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/modules/home/views/widget/showLettuce.dart';
import '../../../constant/size_config.dart';
import '../../../routes/app_pages.dart';
import '../../shared/widget/logoBottom.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final SizeConfig sizeConfig = SizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Row(
          children: [
            const Spacer(),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.PROFILE);
              },
              child: CircleAvatar(
                radius: sizeConfig.getProportionateScreenWidth(20),
                child: Obx(
                  () => Text(
                    controller.name.value.toUpperCase(),
                  ),
                ),
              ),
            ),
          ],
        ),
        title: const Text(
          'Tanaman',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.IMAGE_PAGE,
                  arguments: {'date': controller.updated.value});
            },
            child: Icon(
              Icons.image,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(
            width: sizeConfig.getProportionateScreenWidth(20),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: sizeConfig.getProportionateScreenHeight(20)),
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    right: sizeConfig.getProportionateScreenWidth(25),
                    left: sizeConfig.getProportionateScreenWidth(25),
                    top: sizeConfig.getProportionateScreenHeight(60),
                  ),
                  child: Obx(
                    () => GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          crossAxisSpacing: 9.0,
                          mainAxisSpacing: 20.0,
                        ),
                        itemCount: controller.dataPlants.length,
                        itemBuilder: (context, index) {
                          return ShowLettuce(
                            pixel:
                                controller.dataPlants[index].attributes.pixel,
                            id: controller.dataPlants[index].id,
                          );
                        }),
                  ),
                ),
              ),
            ),
            const LogoBottom()
          ],
        ),
      ),
    );
  }
}
