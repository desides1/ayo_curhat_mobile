import 'package:ayo_curhat/app/modules/controllers/auth_login_controller.dart';
import 'package:ayo_curhat/app/modules/controllers/login_controller.dart';
// import 'package:ayo_curhat/app/modules/views/bottomNav.dart';
import 'package:ayo_curhat/app/modules/views/constants.dart';
import 'package:ayo_curhat/app/modules/views/login_view.dart';
import 'package:ayo_curhat/app/modules/views/navbottombar_view.dart';
// import 'package:ayo_curhat/app/modules/views/publik_curhat_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ayo_curhat/app/modules/views/home_view.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/routes/app_pages.dart';

void main() async {
  final login = Get.put(LoginController());
  final auth = Get.put(AuthLoginController());
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Ayo Curhat",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      builder: EasyLoading.init(),
      home: auth.isAuth.isTrue ? NavbottombarView() : LoginView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: kPrimaryColor,
          ),
          textTheme: GoogleFonts.robotoTextTheme()),
    ),
  );
}
