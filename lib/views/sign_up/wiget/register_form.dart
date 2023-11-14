import 'package:developer_cambodia/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Utils/utils.dart';
import '../../../Utils/validations.dart';
import '../../../viewmodel/user_vew_model.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
  ValueNotifier<bool> _obscureConfirmPassword = ValueNotifier<bool>(true);

  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();
  String? emailError;
  String? passwordError;
  String? confirmPasswordError;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    _obscureConfirmPassword.dispose();
    _obscurePassword.dispose();

    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
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
      final confirmPassword = confirmPasswordController.text.trim();
      emailError = validateEmail(email);
      passwordError = validatePassword(password);
      confirmPasswordError = validateConfirmPassword(password, confirmPassword);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "បង្កើតគណនីរបស់អ្នក",
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
              controller: emailController,
              focusNode: emailFocusNode,
              decoration: const InputDecoration(
                enabledBorder: enabledBorder,
                focusedBorder: focusedBorder,
                errorBorder: errorBorder,
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "អុីម៉ែល",
                border: InputBorder.none,
              ),
              onFieldSubmitted: (value) {
              FocusScope.of(context).requestFocus(passwordFocusNode);
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
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: ValueListenableBuilder<bool>(
              valueListenable: _obscurePassword,
              builder: (context, value, child) {
                return TextFormField(
                  controller: passwordController,
                  focusNode: passwordFocusNode,
                  obscureText: _obscurePassword.value,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    errorMaxLines: 3,
                    focusedBorder: focusedBorder,
                    errorBorder: errorBorder,
                    prefixIcon: const Icon(Icons.lock_outline),
                    hintText: "លេខកូដសម្ងាត់",
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
                  onFieldSubmitted: (value) {
                  FocusScope.of(context).requestFocus(confirmPasswordFocusNode);
                },
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
          const SizedBox(height: 15),
          Container(
            height: 50,
            decoration: ShapeDecoration(
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: ValueListenableBuilder<bool>(
              valueListenable: _obscureConfirmPassword,
              builder: (context, value, child) {
                return TextFormField(
                  controller: confirmPasswordController,
                  obscureText: _obscureConfirmPassword.value,
                  focusNode: confirmPasswordFocusNode,
                  decoration: InputDecoration(
                    enabledBorder: enabledBorder,
                    focusedBorder: focusedBorder,
                    errorBorder: errorBorder,
                    prefixIcon: const Icon(Icons.lock_outline),
                    hintText: "បញ្ជាក់លេខកូដសម្ងាត់",
                    border: InputBorder.none,
                    suffixIcon: InkWell(
                      onTap: () {
                        _obscureConfirmPassword.value =
                            !_obscureConfirmPassword.value;
                      },
                      child: Icon(
                        _obscureConfirmPassword.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility,
                      ),
                    ),
                  ),
                   onFieldSubmitted: (value) {
                  confirmPasswordFocusNode.unfocus();
                },
                );
              },
            ),
          ),
          if (confirmPasswordError != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                confirmPasswordError!,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          const SizedBox(
            height: 15,
          ),
          // Align(
          //   alignment: Alignment.centerRight,
          //   child: TextButton(
          //       onPressed: () {},
          //       child: const Text(
          //         "Forget Password?",
          //         style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             color: AppColor.primaryDarkColor),
          //       )),
          // ),
          SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  validateForm();
                  if (_formKey.currentState!.validate() &&
                      emailError == null &&
                      passwordError == null &&
                      confirmPasswordError == null) {
                    final email = emailController.text.trim();
                    final password = passwordController.text.trim();
                    final comfirmPassword =
                        confirmPasswordController.text.trim();
                    context.read<UserViewModel>().setRegisterFormKey(_formKey);
                    context.read<UserViewModel>().createUserUI(context,
                        email: email,
                        password: password,
                        confirmPassword: comfirmPassword);
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
                  "បង្កើតគណនី",
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
