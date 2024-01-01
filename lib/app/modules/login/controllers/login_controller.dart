import 'package:ayo_curhat/app/data/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class LoginController extends GetxController {
  TextEditingController nimController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var hidden = true.obs;
  var rememberMe = false.obs;
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
          print(token);
          Get.snackbar(
            "Success",
            "Login Berhasil",
            backgroundColor: Colors.green,
            colorText: Colors.white,
          );
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
}
