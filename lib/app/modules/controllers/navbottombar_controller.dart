import 'package:get/get.dart';

import '../views/home_view.dart';
import '../views/profile_view.dart';

class NavbottombarController extends GetxController {
  //TODO: Implement NavbottombarController

  int _currentIndex = 0;
  List pages = [
    HomeView(),
    ProfileView(),
  ];

  void changePage(int index) {
    _currentIndex = index;
    update();
  }

  // Method baru untuk mengambil halaman saat ini
  int get currentPage => _currentIndex;

  // Method baru untuk memutar halaman berikutnya
  void nextPage() {
    _currentIndex = (_currentIndex + 1) % pages.length;
    update();
  }
}
