import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/gen/assets.dart';
import 'package:mobile_hydromelon/apps/routes/app_pages.dart';
import 'package:mobile_hydromelon/apps/shared/utils/parse_time.dart';

import '../../../shared/widget/custom_text.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: controller.isLoading.value
            ? const Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.all(14.0.dm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: 'History',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      title: 'Your previous melon predictions',
                      fontSize: 14,
                      color: Colors.grey.shade800,
                    ),
                    SizedBox(height: 10.h),
                    Expanded(
                      child: controller.data.isEmpty
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: Image.asset(
                                    width: 200.w,
                                    Assets.img.historyNotFound.path,
                                  ),
                                ),
                                SizedBox(height: 20.h),
                                CustomText(
                                  title: 'NO DATA PREDICTIONS',
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                )
                              ],
                            )
                          : ListView.builder(
                              itemCount: controller.data.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Get.toNamed(
                                      Routes.detail,
                                      arguments: controller.data[index],
                                    );
                                  },
                                  child: ListTile(
                                    leading:
                                        Image.asset(Assets.img.melonIcon.path),
                                    title: CustomText(
                                      title:
                                          '${controller.data[index].prediction}',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    subtitle: CustomText(
                                      title:
                                          '${controller.data[index].datetime?.toParsedDate()}',
                                      color: Colors.yellow.shade900,
                                    ),
                                    trailing: CustomText(
                                      title: '${controller.data[index].score}',
                                      color: Colors.green.shade500,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                );
                              },
                            ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
