import 'package:developer_cambodia/Utils/validations.dart';
import 'package:developer_cambodia/viewmodel/user_vew_model.dart';
import 'package:developer_cambodia/views/forget_password/forget_pasword.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants/colors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  final _formKey = GlobalKey<FormState>(); // Update this line
  String? emailError;
  String? passwordError;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
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
      final password = passwordController.text.trim();
      emailError = validateEmail(email);
      passwordError = validatePassword(password);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: context.read<UserViewModel>().loginFormKey,
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "ចូលគណនីរបស់អ្នក",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: AppColor.secondaryDarkColor),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            decoration: ShapeDecoration(
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: TextFormField(
              textInputAction: TextInputAction.continueAction,
              controller: emailController,
              // validator: validateEmail,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "អុីម៉ែល",
                enabledBorder: enabledBorder,
                focusedBorder: focusedBorder,
                errorBorder: errorBorder,
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
          Container(
            height: 50,
            decoration: ShapeDecoration(
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: TextFormField(
              controller: passwordController,
              // validator: validatePassword,
              // obscureText: true,
              decoration: InputDecoration(
                errorStyle: const TextStyle(fontSize: 10),
                errorMaxLines: 3,
                prefixIcon: const Icon(Icons.lock_outline),
                hintText: "លេខសំងាត់",
                enabledBorder: enabledBorder,
                focusedBorder: focusedBorder,
                errorBorder: errorBorder,
                border: InputBorder.none,
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
          ),
          if (passwordError != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                passwordError!,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgetPassword()));
                },
                child: const Text(
                  "ភ្លេចលេខសំងាត់ ?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColor.secondaryDarkColor),
                )),
          ),
          SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  validateForm();
                  if (_formKey.currentState!.validate() &&
                      emailError == null &&
                      passwordError == null) {
                    final email = emailController.text.trim();
                    final password = passwordController.text.trim();

                    context.read<UserViewModel>().setLoginFormKey(
                        _formKey); // Set the loginFormKey in UserViewModel
                    context
                        .read<UserViewModel>()
                        .loginUserUI(context, email: email, password: password);
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
                  "ចូលគណនី",
                  style: TextStyle(
                      color: AppColor.secondaryDarkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ))
        ],
      ),
    );
  }
}
