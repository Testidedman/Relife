import 'package:flutter/material.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({required this.controller, required this.page, super.key});
  final int page;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text (
            "Хотите жить как Калмыков?",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: Color(0xff121F3E)
            ),
          ),
          const Text (
              "Это приложение поможет Вам сохранить Калмыкова",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color(0xff96A0B5)
              )
          ),
          GestureDetector(onTap: () {
            if (page==2) {
              Navigator.of(context).pushReplacementNamed("SignIn");
            }
            else {
              controller.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.ease);
            }
          },
            child: Container(
              height: 52,
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color(0xff3554D1),
              ),
              child: const Text(
                "Трах-трах",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xffFFFFFF)
                ),
              ),
            ),
          ),
          GestureDetector(onTap: () {
            Navigator.of(context).pushReplacementNamed("SignIn");
          },
            child: const Text(
                "Пропустить",
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff3554D1),
                )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              borkov(0),
              borkov(1),
              borkov(2),
            ],
          ),
        ],
      ),
    );
  }

  Widget borkov(int index) {
    return Container(
      height: 6,
      width: 6,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(page == index ? 0xff3554D1 : 0xffB6BEC9),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 8),
    );
  }
}