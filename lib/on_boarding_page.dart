import 'package:flutter/material.dart';
import 'package:trah_trahich/on_boarding_body.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController _controller = PageController();
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/cock.png",
              height:MediaQuery.of(context).size.height/2,
              width:MediaQuery.of(context).size.width,
              fit:BoxFit.fitWidth),

          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (barkov) {
                print(barkov);
                _page = barkov;
                setState(() {

                });
              },
              children: [
                OnBoardingBody(controller: _controller, page: _page,),
                OnBoardingBody(controller: _controller, page: _page,),
                OnBoardingBody(controller: _controller, page: _page,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}