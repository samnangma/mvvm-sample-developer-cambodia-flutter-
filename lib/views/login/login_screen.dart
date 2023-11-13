import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../sign_up/register_page.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          width: size.width, // Set width to full screen width
          height: size.height, // Set height to full screen height
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top),
              Image(
                image: AssetImage("assets/logos/logo.png"),
                height: size.height * 0.26,
              ),
              SizedBox(
                height: 50,
              ),
              const LoginForm(),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("-- ឬ ប្រើប្រាស់ជាមួយ --",style: TextStyle(color: AppColor.black50),),
                    SizedBox(
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
                    SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child: Text.rich(
                        TextSpan(
                          text: ("មិនទាន់មានគណនីឬ ?"),

                          style: TextStyle(color: AppColor.black50,fontSize: 16,),
                          children:  [
                            TextSpan(
                              text: (" ចុះឈ្មោះ "),
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColor.secondaryDarkColor ,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}