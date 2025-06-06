import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constant/size_config.dart';
import '../../../routes/app_pages.dart';
import '../../shared/widget/logoBottom.dart';
import '../controllers/detail_controller.dart';
import 'widget/barIndicator.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final SizeConfig sizeConfig = SizeConfig(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.HISTORY,
                  arguments: {'id': controller.arguments.value.id});
            },
            child: const Icon(Icons.history),
          ),
          SizedBox(
            width: sizeConfig.getProportionateScreenWidth(20),
          ),
        ],
        title: const Text(
          'Detail Plant',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: sizeConfig.getProportionateScreenWidth(25),
          vertical: sizeConfig.getProportionateScreenHeight(20),
        ),
        child: Obx(
          () => Column(
            children: [
              SizedBox(height: sizeConfig.getProportionateScreenHeight(50)),
              Center(
                child: Image.asset(
                  'assets/img/lettuceDetail.png',
                  width: sizeConfig.getProportionateScreenWidth(250),
                ),
              ),
              SizedBox(height: sizeConfig.getProportionateScreenHeight(60)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Pixel',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                          height: sizeConfig.getProportionateScreenHeight(15)),
                      BarIndicator(
                        value: 1000,
                        percent: 30,
                        satuan: 'px',
                        barColor: Colors.blue,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Text(
                        'Weight',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                          height: sizeConfig.getProportionateScreenHeight(15)),
                      BarIndicator(
                        value: 16,
                        percent: 40,
                        satuan: 'g',
                        barColor: Colors.green[300],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: sizeConfig.getProportionateScreenHeight(40)),
              Row(
                children: [
                  Column(
                    children: [
                      const Text(
                        'plant id',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          height: sizeConfig.getProportionateScreenHeight(10)),
                      Text('${controller.arguments.value.id}')
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Text(
                        'prediction',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          height: sizeConfig.getProportionateScreenHeight(10)),
                      Text(controller.arguments.value.prediction.toString())
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Text(
                        'score',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                          height: sizeConfig.getProportionateScreenHeight(10)),
                      Text(controller.arguments.value.score.toString()),
                    ],
                  )
                ],
              ),
              const Spacer(),
              const LogoBottom()
            ],
          ),
        ),
      ),
    );
  }
}
