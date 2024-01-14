import 'package:ayo_curhat/app/data/login_provider.dart';
import 'package:ayo_curhat/app/modules/controllers/auth_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../routes/app_pages.dart';
import '../views/login_view.dart';

class LoginController extends GetxController {
  // ==========================================
  TextEditingController nimController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var hidden = true.obs;
  var rememberMe = false.obs;
  var isAuth = false.obs;

  void authLogin() {
    String nim = nimController.text;
    String password = passwordController.text;
    var data = {
      'nim': nim,
      'password': password,
    };
    // ===========
    if (nim.isEmpty || password.isEmpty) {
      Get.snackbar(
        "Error",
        "Nim dan password tidak boleh kosong",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else {
      EasyLoading.show();
      var data = {
        'nim': nim,
        'password': password,
      };
      LoginProvider().authLogin(data).then((value) {
        if (value.statusCode == 200) {
          var responseBody = value.body;
          var user = responseBody['user'];
          var token = responseBody['token'];
          var nim = user['nim'];
          var password = user['password'];
          print(nim);

          final box = GetStorage();
          if (rememberMe.isTrue) {
            box.write("DataRememberMe", {
              "nim": nimController.text,
              "password": passwordController.text,
              "rememberMe": rememberMe,
              "token": token,
            });
          }
          if (box.read("DataRememberMe") != null) {
            box.remove("DataRememberMe");
          }
          Get.snackbar(
            "Success",
            "Login Berhasil",
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
          Get.offAllNamed(Routes.PUBLIK_CURHAT);
        } else {
          Get.snackbar(
            "Error",
            "Login Gagal!",
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
        }
        EasyLoading.dismiss();
      });
    }
  }

  void logout() {
    Get.offAllNamed(Routes.LOGIN);
  }
}
