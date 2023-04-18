import 'package:flutter/material.dart';
import 'package:trah_trahich/landing_page.dart';
import 'package:trah_trahich/on_boarding_page.dart';
import 'package:trah_trahich/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "landing": (context) => LandingPage(),
        "boardingPage": (context) => OnBoardingPage(),
        "SignIn": (context) => SignIn(),
      },
           home: LandingPage(),
    );
  }
}
