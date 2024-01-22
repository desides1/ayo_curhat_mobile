import 'package:ayo_curhat/app/modules/views/constants.dart';
import 'package:ayo_curhat/app/modules/views/home_view.dart';
import 'package:ayo_curhat/app/modules/views/profile_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/navbottombar_controller.dart';

class NavbottombarView extends GetView<NavbottombarController> {
  NavbottombarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller._currentIndex, // Akses state dari controller
        showUnselectedLabels: true,
        iconSize: 24,
        selectedItemColor: kPrimaryColor,
        selectedFontSize: 12,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
        onTap: (int index) {
          controller.changePage(index); // Panggil method untuk mengubah state
        },
      ),
      body: controller
          .pages[controller._currentIndex], // Tampilkan halaman sesuai state
    );
  }
}

class NavbottombarController extends GetxController {
  int _currentIndex = 0;
  List pages = [
    HomeView(),
    ProfileView(),
  ];

  void changePage(int index) {
    _currentIndex = index;
    update(); // Update state dan trigger rebuild
  }
}
