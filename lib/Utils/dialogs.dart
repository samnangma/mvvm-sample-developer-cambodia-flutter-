  import 'package:developer_cambodia/constants/colors.dart';
  import 'package:flutter/material.dart';
  
void showSnackBar(BuildContext context, String message, int duration) {
  final snackBar = SnackBar(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    backgroundColor: AppColor.primaryColor,
    content: Text(
      message,
      textAlign: TextAlign.center,
    ),
    duration: Duration(milliseconds: duration), // Changed microseconds to milliseconds
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

