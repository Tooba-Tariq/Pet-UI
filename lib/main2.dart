import 'dart:io';

import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),
            ),
            height: double.infinity,
            width: double.infinity,
            child: Center(
              child: SizedBox(
                width: 420,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35),
                            child: Container(
                                height: 50,
                                child: Image.asset("assets/images/logo2.png")),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 35),
                            child: Container(
                                height: 50,
                                child: Image.asset("assets/images/logo.PNG")),
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: text(
                            "Hi, Kamran", 50, Colors.black, FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: text("Good Morning !", 30, Colors.black,
                            FontWeight.normal),
                      ),
                      Container(
                        height: 30,
                      ),
                      Center(child: Image.asset('assets/images/Group 13.png')),
                      Container(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 35),
                            child: text("  Adopt Pet", 30, Colors.black,
                                FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Group 17.png"),
                          Image.asset("assets/images/Group 18.png"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/Group 20.png"),
                          Image.asset("assets/images/Group 19.png"),
                        ],
                      ),
                      Container(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Text text(String text, double font, Color color, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: font,
        fontWeight: fontWeight,
      ),
    );
  }
}
