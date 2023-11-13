import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants/colors.dart';
import '../../Utils/validations.dart';
import '../../viewmodel/user_vew_model.dart';

class ForgetPasswordForm extends StatefulWidget {
  const ForgetPasswordForm({super.key});

  @override
  State<ForgetPasswordForm> createState() => _ForgetPasswordFormState();
}

class _ForgetPasswordFormState extends State<ForgetPasswordForm> {
  late TextEditingController emailController;
  final _formKey = GlobalKey<FormState>();
  String? emailError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
  }

  static const enabledBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 1, color: AppColor.primaryColor));

  static const focusedBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 2, color: AppColor.secondaryColor));

  static const errorBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(width: 1, color: Colors.red));

  void validateForm() {
    setState(() {
      final email = emailController.text.trim();
      emailError = validateEmail(email);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: context.read<UserViewModel>().resetPasswordFormKey,
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "កំណត់ពាក្យសម្ងាត់របស់អ្នកឡើងវិញ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColor.secondaryDarkColor),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "បញ្ចូលអុីម៉ែលដែលភ្ជាប់ជាមួយគណនីរបស់អ្នកហើយយើងនឹង\nផ្ញើ Link សម្រាប់កំណត់ពាក្យសម្ងាត់ឡើងវិញ",
            style: TextStyle(
              color: Color(0xFFBFBFBF),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            decoration: ShapeDecoration(
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                enabledBorder: enabledBorder,
                focusedBorder: focusedBorder,
                errorBorder: errorBorder,
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "អុីម៉ែល",
                border: InputBorder.none,
              ),
            ),
          ),
          if (emailError != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                emailError!,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                validateForm();
                if (_formKey.currentState!.validate() && emailError == null) {
                  final email = emailController.text.trim();
                  context
                      .read<UserViewModel>()
                      .setResetPasswordFormKey(_formKey);

                  context.read<UserViewModel>().resetPasswordUserUI(
                        context,
                        email: email,
                      );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // Set the background color here
                ),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: AppColor.secondaryDarkColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
