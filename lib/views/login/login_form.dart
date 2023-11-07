import 'package:developer_cambodia/views/home/home.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Text(
          //   "Login to your account",
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          // ),
          // const SizedBox(
          //   height: 15,
          // ),
          Container(
            height: 50,
            decoration: ShapeDecoration(
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "អុីម៉ែល",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            height: 50,
            decoration: ShapeDecoration(
              
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock_outline),
                hintText: "លេខសំងាត់",
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "ភ្លេចលេខសំងាត់ ?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColor.primaryDarkColor),
                )),
          ),
          SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Set the background color here
                  ),
                ),
                child: const Text(
                  "ចូលគណនី",
                  style: TextStyle(
                      color: AppColor.blackColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ))
        ],
      ),
    );
  }
}
