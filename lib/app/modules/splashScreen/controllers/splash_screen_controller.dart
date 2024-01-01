import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  final RxBool animationCompleted = false.obs;

  @override
  void onInit() {
    super.onInit();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      animationCompleted.value = true;
    });
  }

  @override
  void onClose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.onClose();
  }
}
