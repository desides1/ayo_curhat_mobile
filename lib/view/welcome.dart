import 'package:flutter/material.dart';
import 'login_page_widget.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyApp(),
                          ),
                        );
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
