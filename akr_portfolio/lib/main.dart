//import 'dart:js';

import 'dart:async';

import 'package:akr_portfolio/about.dart';
import 'package:akr_portfolio/projects.dart';

// import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'home.dart';
// import 'about.dart';
// import 'projects.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: "soho"),
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
      'splash': (context) => SplashScreen(),
      'projects': (context) => MyProject(),
      'home': (context) => MyHome(),
      'about': (context) => MyAbout(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyAbout()));
    });
  }

  @override
  Widget build(Object context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 237, 234, 234),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            height: 250,
            width: 300,
          ),
          SizedBox(
            height: 60,
          ),
          Text(
            'Welcome to my Portfolio',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    ));
  }
}
