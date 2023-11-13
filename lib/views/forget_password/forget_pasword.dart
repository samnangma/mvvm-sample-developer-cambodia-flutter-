import 'package:developer_cambodia/views/forget_password/forget_password_form.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

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
              SizedBox(height: MediaQuery.of(context).padding.top), // Adjust for status bar
              Image(
                image: AssetImage("assets/logos/logo.png"),
                height: size.height * 0.26,
              ),
              SizedBox(height: 10),
              // Text(
              //   "Developers Cambodia",
              //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              // ),
              SizedBox(height: 50),
              const ForgetPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}