import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../sign_up/register_page.dart';
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
                  "ចូលគណនីរបស់អ្នក",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 50,
                ),
                const LoginForm(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("-ឬ ប្រើប្រាស់ជាមួយ -"),
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
                          onPressed: () {Navigator.push(
                              context, MaterialPageRoute(builder: (context) => RegisterPage()));

                          },
                          child: Text.rich(TextSpan(
                              text: ("មិនទាន់មានគណនីឬ ?"),
                              style: TextStyle(color: AppColor.blackColor),
                              children: const [
                                TextSpan(
                                    text: (" ចុះឈ្មោះ "),
                                    style:
                                        TextStyle(color: AppColor.primaryDarkColor,fontWeight:FontWeight.w900))
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
