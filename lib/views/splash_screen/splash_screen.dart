import 'package:developer_cambodia/views/splash_screen/onboardingpage/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:developer_cambodia/views/home/home.dart';
import 'package:developer_cambodia/views/login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Animation duration
    );

    _controller.forward().then((value) {
      // Navigate to the main screen after the animation
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) =>
              OnboardingScreen(), // Replace 'HomeScreen()' with your main screen
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _controller,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 300,
                    height: 300,
                    child: Image.asset(
                        'assets/logos/logo.png')), // This should display the image
                SizedBox(height: 20),
                Text(
                  'Developers Cambodia',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
