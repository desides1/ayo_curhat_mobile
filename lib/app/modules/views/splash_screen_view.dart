import 'package:ayo_curhat/app/modules/views/welcome_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Obx(() {
          if (controller.animationCompleted.value) {
            WidgetsBinding.instance!.addPostFrameCallback((_) {
              Get.offAll(const WelcomeScreenView());
            });
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('assets/images/white-logo.png')],
          );
        }),
      ),
    );
  }
}
