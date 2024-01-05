import 'package:ayo_curhat/app/modules/views/login_view.dart';
import 'package:get/get.dart';
import 'package:ayo_curhat/app/data/login_provider.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter/material.dart';
import 'package:ayo_curhat/app/routes/app_pages.dart';
// import 'package:ayo_curhat/app/data/login_provider.dart';
import 'dart:convert';
// import 'package:loading_animation_widget/loading_animation_widget.dart';

class AuthLoginController extends GetxController {
  TextEditingController nimController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  LoginProvider loginProvider = LoginProvider();

  var hidden = true.obs;
  var rememberMe = false.obs;
  var isAuth = false.obs;

// Login otomatis jika data tersimpan
  Future<void> autoLogin() async {
    final box = GetStorage();
    if (box.read("dataUser") != null) {
      final data = box.read("dataUser") as Map<String, dynamic>;
      await login(data["nim"], data["password"], data["rememberMe"]);
    }
  }

// login pengguna deng
  Future<void> login(String nim, String password, bool rememberMe) async {
    if (nim != '' && password != '') {
      try {
        final response = await loginProvider.authLogin({
          'nim': nimController.text,
          'password': passwordController.text,
        });

        if (response.statusCode == 200) {
          final Map<String, dynamic> responseData = json.decode(response.body);
          if (responseData['success'] == true) {
            EasyLoading.show();
            if (rememberMe) {
              final box = GetStorage();
              box.write(
                'dataUser',
                {
                  "nim": nimController.text,
                  "password": passwordController,
                  "rememberMe": rememberMe,
                  "token": responseData['token'],
                },
              );
            } else {
              final box = GetStorage();
              if (box.read('dataUser') != null) {
                box.erase();
              }
            }
            isAuth.value = true;
            Get.snackbar(
              "Success",
              "Login Berhasil",
              backgroundColor: Colors.green,
              colorText: Colors.white,
            );
            Get.offAllNamed(Routes.PUBLIK_CURHAT);
          } else {
            // pesan error tidak valid akun
          }
          EasyLoading.dismiss();
        }
      } catch (e) {
        Get.snackbar(
          "Error",
          "Login Gagal!",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } else {
      if (nim.isEmpty || password.isEmpty) {
        Get.snackbar(
          "Error",
          "Nim dan password tidak boleh kosong",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    }
  }

  void logout(bool rememberMe) {
    final box = GetStorage();
    if (box.read('dataUser') != null) {
      box.erase();
    }
    isAuth.value = false;
    Get.put(LoginView());
  }
}
