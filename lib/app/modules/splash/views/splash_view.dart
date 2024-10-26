import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/colors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SplashView',
          style: TextStyle(color: secondarycolor),
        ),
        centerTitle: true,
      ),
      body: const Center(
          child: CircularProgressIndicator(
        color: secondarycolor,
      )),
    );
  }
}
