import 'package:ayo_curhat/app/modules/controllers/auth_login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthLoginController>(
      () => AuthLoginController(),
    );
  }
}
