import 'package:ayo_curhat/app/modules/controllers/auth_login_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  AuthLoginController loginController = AuthLoginController();
  @override
  void onInit() async {
    super.onInit();
    final box = GetStorage();
    if (box.read("dataUser") != null) {
      final data = box.read("dataUser") as Map<String, dynamic>;
      loginController.nimController.text = data['nim'];
      loginController.passwordController.text = data['password'];
      loginController.rememberMe.value = data['rememberMe'];
    }
  }

  @override
  void onClose() {
    loginController.nimController.dispose();
    loginController.passwordController.dispose();
    super.onClose();
  }
  // ==========================================

  // void authLogin() {
  //   String nim = nimController.text;
  //   String password = passwordController.text;
  //   var data = {
  //     'nim': nim,
  //     'password': password,
  //   };
  //   // ===========
  //   if (nim.isEmpty || password.isEmpty) {
  //     Get.snackbar(
  //       "Error",
  //       "Nim dan password tidak boleh kosong",
  //       backgroundColor: Colors.red,
  //       colorText: Colors.white,
  //     );
  //   } else {
  //     EasyLoading.show();
  //     var data = {
  //       'nim': nim,
  //       'password': password,
  //     };
  //     LoginProvider().authLogin(data).then((value) {
  //       if (value.statusCode == 200) {
  //         var responseBody = value.body;
  //         var user = responseBody['user'];
  //         var token = responseBody['token'];
  //         var nim = user['nim'];
  //         var password = user['password'];
  //         print(nim);
  //         Get.snackbar(
  //           "Success",
  //           "Login Berhasil",
  //           backgroundColor: Colors.green,
  //           colorText: Colors.white,
  //         );
  //         Get.offAllNamed(Routes.PUBLIK_CURHAT);
  //       } else {
  //         Get.snackbar(
  //           "Error",
  //           "Login Gagal!",
  //           backgroundColor: Colors.red,
  //           colorText: Colors.white,
  //         );
  //       }
  //       EasyLoading.dismiss();
  //     });
  //   }
  // }
}
