import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/views/login/login_screen.dart';
import 'package:developer_cambodia/views/sign_up/wiget/register_form.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top),
              Image(
                image: AssetImage("assets/logos/logo.png"),
                height: size.height * 0.26,
              ),
              SizedBox(height: 50),
              const RegisterForm(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "-- ឬ ប្រើប្រាស់ជាមួយ --",
                      style: TextStyle(color: AppColor.black50),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              // Add your onPressed logic for the first image here
                            },
                            child: Image(
                              image: AssetImage("assets/logos/google.png"),
                              width: 30,
                            ),
                          ),
                          SizedBox(width: 30),
                          GestureDetector(
                            onTap: () {
                              // Add your onPressed logic for the second image here
                            },
                            child: Image(
                              image: AssetImage("assets/logos/apple.png"),
                              width: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          text: ("មានគណនីរួចហើយ?"),
                          style:
                              TextStyle(color: AppColor.black50, fontSize: 16),
                          children: [
                            TextSpan(
                              text: (" ចូលគណនី"),
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColor.secondaryDarkColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
