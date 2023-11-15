import 'package:developer_cambodia/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../Utils/validations.dart';
import '../../../viewmodel/user_vew_model.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final ValueNotifier<bool> _obscurePassword = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _obscureConfirmPassword = ValueNotifier<bool>(true);

  late TextEditingController lastNameController;
  late TextEditingController firstNameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  FocusNode lastNameFocusNode = FocusNode();
  FocusNode firstNameFocusNode = FocusNode();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();
  String? lastNameError;
  String? firstNameError;
  String? emailError;
  String? passwordError;
  String? confirmPasswordError;

  _RegisterFormState() {
    // Initialize controllers in the constructor
    lastNameController = TextEditingController();
    firstNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void initState() {
    super.initState();
    lastNameController = TextEditingController();
    firstNameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    lastNameController.dispose();
    firstNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();

    _obscureConfirmPassword.dispose();
    _obscurePassword.dispose();

    lastNameFocusNode.dispose();
    firstNameFocusNode.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
  }

  static const OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(width: 2, color: AppColor.secondaryColor),
  );

  void validateForm() {
    setState(() {
      final lastName = lastNameController.text.trim();
      final firstName = firstNameController.text.trim();
      final email = emailController.text.trim();
      final password = passwordController.text.trim();
      final confirmPassword = confirmPasswordController.text.trim();

      lastNameError = validatelastName(lastName);
      firstNameError = validatefirstName(firstName);

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
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColor.gray50,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        controller: lastNameController,
                        expands: false,
                        focusNode: lastNameFocusNode,
                        decoration: InputDecoration(
                          focusedBorder: focusedBorder,
                          labelText:
                              lastNameFocusNode.hasFocus ? null : "នាមត្រកូល",
                          labelStyle: TextStyle(color: AppColor.black70),
                          prefixIcon: Icon(Icons.people_outline),
                          border: InputBorder.none,
                        ),
                        onFieldSubmitted: (value) {
                          FocusScope.of(context)
                              .requestFocus(firstNameFocusNode);
                        },
                      ),
                    ),
                    if (lastNameError != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          lastNameError!,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      decoration: ShapeDecoration(
                        color: AppColor.gray50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: TextFormField(
                        controller: firstNameController,
                        focusNode: firstNameFocusNode,
                        expands: false,
                        decoration: InputDecoration(
                          focusedBorder: focusedBorder,
                          prefixIcon: const Icon(Icons.people_outline),
                          labelText: firstNameFocusNode.hasFocus ? null : "នាម",
                          labelStyle: TextStyle(color: AppColor.black70),
                          border: InputBorder.none,
                        ),
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(emailFocusNode);
                        },
                      ),
                    ),
                    if (firstNameError != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          firstNameError!,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 60,
            decoration: ShapeDecoration(
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: TextFormField(
              controller: emailController,
              focusNode: emailFocusNode,
              decoration: InputDecoration(
                focusedBorder: focusedBorder,
                prefixIcon: Icon(Icons.email_outlined),
                labelText: emailFocusNode.hasFocus ? null : "អុីម៉ែល",
                labelStyle: TextStyle(color: AppColor.black70),
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
            height: 60,
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
                    errorMaxLines: 3,
                    focusedBorder: focusedBorder,
                    prefixIcon: const Icon(Icons.lock_outline),
                    labelText:
                        passwordFocusNode.hasFocus ? null : "លេខកូដសម្ងាត់",
                    labelStyle: TextStyle(color: AppColor.black70),
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
                    FocusScope.of(context)
                        .requestFocus(confirmPasswordFocusNode);
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
            height: 60,
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
                    focusedBorder: focusedBorder,
                    prefixIcon: const Icon(Icons.lock_outline),
                    labelText: confirmPasswordFocusNode.hasFocus
                        ? null
                        : "បញ្ជាក់លេខកូដសម្ងាត់",
                    labelStyle: TextStyle(color: AppColor.black70),
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
            height: 12,
          ),
          Row(
            children: [
              SizedBox(
                  width: 20,
                  height: 20,
                  child: Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(
                width: 10,
              ),
              const Text.rich(TextSpan(children: [
                TextSpan(
                    text: "ខ្ញុំយល់ព្រមនៅគ្រប់លក្ខខ័ណ្ឌខាងលើនេះ",
                    style: TextStyle(color: AppColor.blackColor, fontSize: 13))
              ]))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  validateForm();
                  if (_formKey.currentState!.validate() &&
                      firstNameError == null &&
                      lastNameError == null &&
                      emailError == null &&
                      passwordError == null &&
                      confirmPasswordError == null) {
                    final email = emailController.text.trim();
                    final password = passwordController.text.trim();
                    final comfirmPassword =
                        confirmPasswordController.text.trim();
                    final lastName = lastNameController.text.trim();
                    final firstName = firstNameController.text.trim();

                    context.read<UserViewModel>().setRegisterFormKey(_formKey);
                    context.read<UserViewModel>().createUserUI(
                          context,
                          lastName: lastName,
                          firstName: firstName,
                          email: email,
                          password: password,
                          confirmPassword: comfirmPassword,
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
