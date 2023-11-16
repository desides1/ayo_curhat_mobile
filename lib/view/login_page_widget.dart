import 'package:flutter/material.dart';
import 'package:ayo_curhat/view/listView.dart';
import 'package:ayo_curhat/view/register_page_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Scaffold untuk menghendel 1 layar
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
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                top: 5, bottom: 5, left: 30, right: 5),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                              color: (Colors.grey[300])!,
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

                    //  bagian ke- 4
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          const Text("Ingat saya"),
                          Checkbox(
                            value: false,
                            onChanged: (value) {},
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: (Colors.grey[600])!,
                                    minimumSize: Size.zero,
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Register(),
                                ),
                              );
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
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const List_View(),
                                ),
                              );
                            },
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

/* class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
} */
