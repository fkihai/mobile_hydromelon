// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:get/get.dart';
// import 'package:mobile_hydromelon/apps/data/remote/api_endpoint.dart';

// import '../../../constant/size_config.dart';
// import '../../../routes/app_pages.dart';
// import '../../shared/widget/logoBottom.dart';
// import '../controllers/detail_controller.dart';
// import 'widget/barIndicator.dart';

// class DetailView extends GetView<DetailController> {
//   const DetailView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final arguments = controller.arguments.value;
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           InkWell(
//             onTap: () {
//               Get.toNamed(Routes.HISTORY, arguments: {'id': arguments.id});
//             },
//             child: const Icon(Icons.history),
//           ),
//           SizedBox(width: 20.w),
//         ],
//         title: const Text(
//           'Detail Plant',
//           style: TextStyle(fontSize: 20, color: Colors.black),
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
//         child: Obx(
//           () => Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 50.h),
//               Center(
//                 child: Image.network(
//                   '${ApiEndpoint.domain}${arguments.imageUrl}',
//                   fit: BoxFit.cover,
//                   width: 250.w,
//                   loadingBuilder: (context, child, loadingProgress) {
//                     if (loadingProgress == null) return child;
//                     return const Center(child: CircularProgressIndicator());
//                   },
//                   errorBuilder: (context, error, stackTrace) {
//                     return const Center(
//                       child: Icon(Icons.broken_image,
//                           color: Colors.grey, size: 60),
//                     );
//                   },
//                 ),
//               ),
//               SizedBox(height: 60.h),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: [
//                       SizedBox(height: 15.h),
//                       BarIndicator(
//                         value: double.parse("${arguments.score}"),
//                         percent: double.parse("${arguments.score}") * 100,
//                         satuan: '',
//                         barColor: Colors.green[300],
//                       ),
//                     ],
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Row(
//                         children: [
//                           const SizedBox(width: 80, child: Text("Prediksi")),
//                           Text(": ${arguments.prediction}"),
//                         ],
//                       ),
//                       SizedBox(height: 8.h),
//                       Row(
//                         children: [
//                           const SizedBox(width: 80, child: Text("Score")),
//                           Text(": ${arguments.score}"),
//                         ],
//                       ),
//                       SizedBox(height: 8.h),
//                       const Row(
//                         children: [
//                           SizedBox(width: 80, child: Text("Type")),
//                           Text(": Melon"),
//                         ],
//                       ),
//                       SizedBox(height: 8.h),
//                       Row(
//                         children: [
//                           const SizedBox(width: 80, child: Text("Date")),
//                           Text(
//                               ": ${DateTime.parse("${arguments.datetime}").toLocal().toString().substring(0, 10)}"),
//                         ],
//                       ),
//                       SizedBox(height: 8.h),
//                       Row(
//                         children: [
//                           const SizedBox(width: 80, child: Text("Jam")),
//                           Text(
//                               ": ${DateTime.parse("${arguments.datetime}").toLocal().toString().substring(11, 19)}"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               const Spacer(),
//               const LogoBottom()
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
