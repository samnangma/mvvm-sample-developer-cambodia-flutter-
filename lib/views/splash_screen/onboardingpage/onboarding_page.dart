import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/views/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class Onboarding extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Discover Your Larning',
      subTitle: 'Enjoy us to Make Your Dream Come True',
      imageUrl: 'assets/logos/onboarding1.png',
    ),
    Introduction(
      title: 'Discover Your Larning',
      subTitle: 'Enjoy us to Make Your Dream Come True',
      imageUrl: 'assets/logos/onboarding2.png',
    ),
    Introduction(
      title: 'Discover Your Larning',
      subTitle: 'Enjoy us to Make Your Dream Come True',
      imageUrl: 'assets/logos/onboarding1.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color(0xFFf9f9f9),
      foregroundColor: AppColor.primaryColor,
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          )),
      skipTextStyle: const TextStyle(
        color: AppColor.primaryDarkColor,
        fontSize: 18,
      ),
    );
  }
}