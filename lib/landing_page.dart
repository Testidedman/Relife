import 'package:flutter/material.dart';
import 'package:trah_trahich/on_boarding_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.of(context).push(MaterialPageRoute(builder:(context) => const OnBoardingPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3554D1),
      body: Stack(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: Image.asset("assets/dicktrahicha.png")
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset("assets/dickkalmikova.png")
          ),
          const Center(
              child: Text(
                  "Relife",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    color: Color(0xffffffff)
                ),
              )
          ),
          const Positioned(

              bottom: 32,
              left: 0,
              right: 0,
              child: Text(
                  "Relife - приложение для сборки мусора",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xffffffff),
                  ),
              )
          )
        ],
      )
    );
  }
}
