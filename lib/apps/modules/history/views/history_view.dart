import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../shared/widget/custom_text.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            Expanded(
              child: ListView.builder(
                itemCount: 40,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: ListTile(
                      leading: const Text("image"),
                      title: Text('Data ${index + 1}'),
                      subtitle: const Text('11:13:21:09:08:25'),
                      trailing: const Text("0.98"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
