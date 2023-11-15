import 'package:developer_cambodia/Utils/validations.dart';
import 'package:developer_cambodia/viewmodel/user_vew_model.dart';
import 'package:developer_cambodia/views/forget_password/forget_pasword.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Utils/utils.dart';
import '../../constants/colors.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);

  late TextEditingController emailController;
  late TextEditingController passwordController;
  final _formKey = GlobalKey<FormState>(); // Update this line
  String? emailError;
  String? passwordError;

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

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
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    _obscurePassword.dispose();
  }



  static const focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(width: 2, color: AppColor.secondaryColor));

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
              // textInputAction: TextInputAction.continueAction,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              focusNode: emailFocusNode,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                labelText: "អុីម៉ែល",
                 labelStyle: TextStyle(color: AppColor.black70),
                focusedBorder: focusedBorder,
                border: InputBorder.none,
              ),
              onFieldSubmitted: (value) {
                Utils.fieldFocusChangeLogin(
                    context, emailFocusNode, passwordFocusNode);
              },
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
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: ValueListenableBuilder<bool>(
              valueListenable: _obscurePassword,
              builder: (context, value, child) {
                return TextFormField(
                  controller: passwordController,
                  obscureText: _obscurePassword.value,
                  focusNode: passwordFocusNode,
                  decoration: InputDecoration(
                    errorMaxLines: 3,
                    prefixIcon: const Icon(Icons.lock_outline),
                    labelText: "លេខសំងាត់",
                    labelStyle: TextStyle(color: AppColor.black70),
                    focusedBorder: focusedBorder,
                    border: InputBorder.none,
                    suffixIcon: InkWell(
                      onTap: () {
                        _obscurePassword.value = !_obscurePassword.value;
                      },
                      child: Icon(
                        _obscurePassword.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility,
                      ),
                    ),
                  ),
                );
              },
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
