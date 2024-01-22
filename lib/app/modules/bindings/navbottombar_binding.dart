import 'package:get/get.dart';

import '../controllers/navbottombar_controller.dart';

class NavbottombarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavbottombarController>(
      () => NavbottombarController(),
    );
  }
}
