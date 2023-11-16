import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: Image.asset('assets/images/logo.png'),
              ),
            )),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 30, right: 5),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.grey[300]),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.0),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey[300]!,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.0),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 30, right: 5),
                            hintText: "NIM",
                            hintStyle: TextStyle(color: Colors.grey[300]),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.0),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey[300]!,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.0),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 30, right: 5),
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.grey[300]),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.0),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey[300]!,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.0),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 30, right: 5),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey[300]),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.0),
                              borderSide: BorderSide(
                                width: 1,
                                color: Colors.grey[300]!,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(45.0),
                            )),
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
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 206, 13, 148),
                            minimumSize: Size(277, 41),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                            side: const BorderSide(color: Colors.purpleAccent),
                          ),
                          child: const Text(
                            "Konfirmasi",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
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
