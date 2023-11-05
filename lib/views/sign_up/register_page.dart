import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/views/sign_up/wiget/register_form.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
                  "Developers Cambodia",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 70,
                ),
                const RegisterForm(),
                SizedBox(height: 10,),
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
                              text: ("Already have an account?"),
                              style: TextStyle(color: AppColor.blackColor),
                              children: const [
                                TextSpan(
                                    text: (" Log In"),
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
