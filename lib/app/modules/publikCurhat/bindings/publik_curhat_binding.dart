import 'package:get/get.dart';

import '../controllers/publik_curhat_controller.dart';

class PublikCurhatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PublikCurhatController>(
      () => PublikCurhatController(),
    );
  }
}
