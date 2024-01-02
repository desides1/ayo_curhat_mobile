import 'package:ayo_curhat/app/modules/controllers/auth_login_controller.dart';
// import 'package:ayo_curhat/app/modules/controllers/login_controller.dart';
import 'package:ayo_curhat/app/modules/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/welcome_screen_controller.dart';

class WelcomeScreenView extends GetView<WelcomeScreenController> {
  const WelcomeScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(AuthLoginController());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(35),
              child: Column(children: [
                const Text(
                  "Selamat Datang",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ]),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: Image.asset('assets/images/Beranda.png'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Bebas Ekspresikan Dirimu Terhadap Kami",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(0),
                      child: Text(
                        "Tuangkan segala permasalahan anda dan percayakan pada kami. Lingkungan yang sehat diawali dengan pemikiran sehat.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: FloatingActionButton(
                      onPressed: () {
                        Get.to(() => LoginView());
                      },
                      backgroundColor: Colors.pink,
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
