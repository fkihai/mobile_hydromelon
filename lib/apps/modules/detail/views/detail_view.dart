import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:mobile_hydromelon/apps/data/remote/api_endpoint.dart';

import '../../../routes/app_pages.dart';
import '../../shared/widget/logoBottom.dart';
import '../controllers/detail_controller.dart';
import 'widget/barIndicator.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final args = controller.arguments.value;
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.HISTORY, arguments: {'id': args.id});
            },
            child: const Icon(Icons.history),
          ),
          SizedBox(width: 20.w),
        ],
        title: const Text(
          'Detail Plant',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Image.network(
                '${ApiEndpoint.domain}${args.imageUrl}',
                fit: BoxFit.cover,
                width: 250.w,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child:
                        Icon(Icons.broken_image, color: Colors.grey, size: 60),
                  );
                },
              ),
              SizedBox(height: 70.h),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 15.h),
                      BarIndicator(
                        value: double.parse("${args.score}"),
                        percent: double.parse("${args.score}") * 100,
                        satuan: '',
                        barColor: Colors.green[300],
                      ),
                    ],
                  ),
                  SizedBox(width: 30.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 80, child: Text("Prediksi")),
                          Text(": ${args.prediction}"),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          const SizedBox(width: 80, child: Text("Score")),
                          Text(": ${args.score}"),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      const Row(
                        children: [
                          SizedBox(width: 80, child: Text("Type")),
                          Text(": Melon"),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          const SizedBox(width: 80, child: Text("Date")),
                          Text(
                              ": ${DateTime.parse("${args.datetime}").toLocal().toString().substring(0, 10)}"),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          const SizedBox(width: 80, child: Text("Jam")),
                          Text(
                              ": ${DateTime.parse("${args.datetime}").toLocal().toString().substring(11, 19)}"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              const LogoBottom(),
            ],
          ),
        ),
      ),
    );
  }
}
