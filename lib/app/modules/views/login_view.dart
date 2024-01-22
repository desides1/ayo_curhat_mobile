import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/login_controller.dart';
// import '../controllers/auth_login_controller.dart';
// import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final box = GetStorage();

  LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Get.put(AuthLoginController());
    // Get.put(LoginController());
    // Get.find<AuthLoginController>();
    // Get.find<LoginController>();

    if (box.read("DataRememberMe") != null) {
      controller.rememberMe.value = true;
      controller.nimController = box.read("DataRememberMe")['nim'];
      controller.passwordController = box.read("DataRememberMe")['password'];
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                )),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Bagian Text Login
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                    //  Bagian NIM
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: controller.nimController,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 30, right: 5),
                            hintText: "Masukkan NIM",
                            hintStyle: TextStyle(color: (Colors.grey[300])!),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.0),
                              borderSide: BorderSide(
                                width: 1,
                                color: (Colors.grey[300])!,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.0),
                            )),
                      ),
                    ),

                    // Bagian Password
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Obx(
                        () => TextField(
                          controller: controller.passwordController,
                          autocorrect: false,
                          obscureText: controller.hidden.value,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(
                                  top: 5, bottom: 5, left: 30, right: 5),
                              suffixIcon: IconButton(
                                onPressed: () => controller.hidden.toggle(),
                                icon: controller.hidden.isTrue
                                    ? Icon(Icons.remove_red_eye)
                                    : Icon(Icons.remove_red_eye_outlined),
                              ),
                              hintText: "Masukkan Password",
                              hintStyle: TextStyle(color: (Colors.grey[300])!),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45.0),
                                borderSide: BorderSide(
                                  width: 1,
                                  color: (Colors.grey[300])!,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45.0),
                              )),
                        ),
                      ),
                    ),

                    //  bagian ke- 4
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: <Widget>[
                          const Text("Ingat saya"),
                          Obx(
                            () => Checkbox(
                              value: controller.rememberMe.value,
                              onChanged: (value) =>
                                  controller.rememberMe.toggle(),
                              // controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: (Colors.grey[600])!,
                                    // minimumSize: Sizes.zero,
                                    padding: EdgeInsets.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap),
                                onPressed: () {},
                                child: const Text("Lupa password?"),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => () {},
                              //   ),
                              // );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor:
                                  const Color.fromARGB(255, 176, 66, 195),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(45),
                                ),
                              ),
                              side: const BorderSide(
                                color: Colors.purpleAccent,
                              ),
                            ),
                            child: const Text(
                              "Daftar",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                            onPressed: () => controller.authLogin(),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 222, 61, 144),
                              foregroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(45),
                                ),
                              ),
                            ),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
