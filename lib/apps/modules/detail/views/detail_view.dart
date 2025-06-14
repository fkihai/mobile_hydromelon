import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/remote/api_endpoint.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/widget/custom_text.dart';
import '../../../shared/widget/logoBottom.dart';
import '../controllers/detail_controller.dart';
import '../widgets/bar_indicator.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = controller.arguments.value;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(16.0.dm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  title: 'Result',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  title: 'Your melon prediction',
                  fontSize: 14,
                  color: Colors.grey.shade800,
                ),
                SizedBox(height: 20.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.network(
                    '${ApiEndpoint.domain}${args.imageUrl}',
                    fit: BoxFit.contain,
                    width: double.infinity,
                    height: 200.h,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const Center(child: CircularProgressIndicator());
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(Icons.broken_image,
                            color: Colors.grey, size: 60),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10.h),
                Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 15.h),
                        // BarIndicator(
                        //   value: double.parse("${args.score}"),
                        //   percent: double.parse("${args.score}") * 100,
                        //   satuan: '',
                        //   barColor: Colors.green[300],
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: CustomText(
                                  title: 'Prediksi',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomText(
                                  title: " : ${args.prediction}",
                                  fontSize: 12.sp
                                  // softWrap: true,
                                  // overflow: TextOverflow.visible,
                                  ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: CustomText(
                                  title: 'Score',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomText(
                                title: " : ${args.score}",
                                fontSize: 12.sp,
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: CustomText(
                                  title: 'Type',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomText(title: " : Melon", fontSize: 12.sp),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: CustomText(
                                  title: 'Date',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomText(
                                title:
                                    " : ${DateTime.parse("${args.datetime}").toLocal().toString().substring(0, 10)}",
                                fontSize: 12.sp,
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: CustomText(
                                  title: 'Time',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomText(
                                title:
                                    " : ${DateTime.parse("${args.datetime}").toLocal().toString().substring(11, 19)}",
                                fontSize: 12.sp,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: CustomText(
                                  title: 'Time',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomText(
                                title:
                                    " : ${DateTime.parse("${args.datetime}").toLocal().toString().substring(11, 19)}",
                                fontSize: 12.sp,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: CustomText(
                                  title: 'Time',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomText(
                                title:
                                    " : ${DateTime.parse("${args.datetime}").toLocal().toString().substring(11, 19)}",
                                fontSize: 12.sp,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 80,
                                child: CustomText(
                                  title: 'Time',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              CustomText(
                                title:
                                    " : ${DateTime.parse("${args.datetime}").toLocal().toString().substring(11, 19)}",
                                fontSize: 12.sp,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const LogoBottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
