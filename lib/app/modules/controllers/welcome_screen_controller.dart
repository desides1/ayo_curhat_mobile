import 'package:ayo_curhat/app/modules/controllers/login_controller.dart';
import 'package:ayo_curhat/app/modules/views/login_view.dart';
import 'package:get/get.dart';

class WelcomeScreenController extends GetxController {
  //TODO: Implement WelcomeScreenController

  @override
  void onInit() {
    super.onInit();
    // Your initialization logic, if needed
  }

  void navigateToLoginPage() {
    Get.to(() => LoginView());
  }
}