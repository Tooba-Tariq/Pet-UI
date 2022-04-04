import 'package:flutter/material.dart';
import 'package:pet_ui_1127/main2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PetUI(),
    );
  }
}

class PetUI extends StatelessWidget {
  const PetUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    text(String text, double font, Color color, FontWeight fontWeight) {
      return Text(
        text,
        style: TextStyle(color: color, fontSize: font, fontWeight: fontWeight),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                  ),
                  text('GET PET', 80, Colors.white, FontWeight.bold),
                  Image.asset('assets/images/Group 1.png'),
                  text('Find your favorite', 40, Colors.white, FontWeight.bold),
                  text('pet close to you', 40, Colors.white, FontWeight.bold),
                  text('Join and discover your favorite pet in', 18,
                      Color.fromARGB(255, 253, 210, 93), FontWeight.normal),
                  text('your locality', 18, Color.fromARGB(255, 253, 210, 93),
                      FontWeight.normal),
                  Container(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 280,
                    child: Card(
                      elevation: 4,
                      child: TextButton(
                          child: text("Get Started", 18.0, Colors.orangeAccent,
                              FontWeight.bold),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyApp2(),
                              ),
                            );
                          }),
                    ),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.yellow.shade700,
                  Colors.orange,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
