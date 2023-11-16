import 'package:flutter/material.dart';
// import 'package:flutter_praktikum/halamanPertama.dart';
// import 'package:flutter_praktikum/halamanUtama.dart';
import 'package:ayo_curhat/view/listView.dart';

import 'package:ayo_curhat/view/register_page_widget.dart';
import 'package:ayo_curhat/view/splash_page_widget.dart';
// import 'login_page_widget.dart';

void main() {
  // menjalankan aplikasi
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SplashScreen(),
        ));
  }
}
