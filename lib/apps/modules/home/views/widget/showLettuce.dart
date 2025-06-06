import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';

class ShowLettuce extends StatelessWidget {
  const ShowLettuce({super.key, required this.pixel, required this.id});

  final int pixel;
  final int id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.DETAIL, arguments: {'id': id});
      },
      child: CircleAvatar(
        backgroundImage:
            pixel > 0 ? const AssetImage('assets/img/lettuce.png') : null,
      ),
    );
  }
}
