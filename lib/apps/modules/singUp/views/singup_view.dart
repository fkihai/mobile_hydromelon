import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/singup_controller.dart';

class SingupView extends GetView<SingupController> {
  const SingupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingupView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SingupView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
