import 'package:developer_cambodia/Utils/dialogs.dart';
import 'package:flutter/material.dart';
import '../Utils/validations.dart';
import '../views/home/home.dart';
import '../views/opt_verfiy/opt_verfiy.dart';

class UserViewModel with ChangeNotifier {
  GlobalKey<FormState>? _loginFormKey;
  GlobalKey<FormState>? get loginFormKey => _loginFormKey;

  void setLoginFormKey(GlobalKey<FormState> formKey) {
    _loginFormKey = formKey;
  }

  GlobalKey<FormState>? _registerFormKey;
  GlobalKey<FormState>? get registerFormKey => _registerFormKey;

  void setRegisterFormKey(GlobalKey<FormState> formKey) {
    _registerFormKey = formKey;
  }

  GlobalKey<FormState>? _resetPasswordFormKey;
  GlobalKey<FormState>? get resetPasswordFormKey => _resetPasswordFormKey;

  void setResetPasswordFormKey(GlobalKey<FormState> formKey) {
    _resetPasswordFormKey = formKey;
  }

  // final resetPasswordFormKey = GlobalKey<FormState>();

  void loginUserUI(BuildContext context,
      {required String email, required String password}) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (loginFormKey?.currentState?.validate() ?? false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }

  // the error code

  // void createUserUI(BuildContext context,
  //     {required String email,
  //     required String password,
  //     required String confirmPassword}) async {
  //   FocusManager.instance.primaryFocus?.unfocus();
  //   if (registerFormKey?.currentState?.validate() ?? false) {

  //     if (confirmPassword.toString().trim() != password.toString().trim()) {
  //       showSnackBar(context, "password don't match", 2000);

  //     } else{
  //       Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => CompleteInfo()));
  //     }
  //   }
  // }

  void createUserUI(BuildContext context,
      {required String lastName,
      required String firstName,
      required String email,
      required String password,
      required String confirmPassword}) async {
    FocusManager.instance.primaryFocus?.unfocus();

    String? confirmPasswordError =
        validateConfirmPassword(password, confirmPassword);

    if (confirmPasswordError != null) {
      showSnackBar(context, confirmPasswordError, 2000);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Verificatoin()),
      );
    }
  }

  void resetPasswordUserUI(
    BuildContext context, {
    required String email,
  }) async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (resetPasswordFormKey?.currentState?.validate() ?? false) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }
}
