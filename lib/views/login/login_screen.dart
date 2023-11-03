
import 'package:developer_cambodia/constants/colors.dart';
import 'package:flutter/material.dart';

import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("assets/logos/logo.png"),
                  height: size.height * 0.2,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Developer Cambodia",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 82,
                ),
                const LoginForm(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("-or Sign In with -"),
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
                            SizedBox(width: 30 ,),
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
                      SizedBox(
                        height: 10,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text.rich(TextSpan(
                              text: ("Don't have an account?"),
                              style: TextStyle(color: AppColor.blackColor),
                              children: const [
                                TextSpan(
                                    text: (" Sign Up"),
                                    style:
                                        TextStyle(color: AppColor.primaryColor))
                              ],),),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
