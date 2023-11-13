import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'colors.dart';

class AppSize{
  static TextStyle AppBarTitle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold
      );
  static  TextStyle SubTitle =TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold
  );
  static TextStyle SubTitleB50 =TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColor.black50
  );
  static TextStyle TitleCourse =TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24,
  );
  static TextStyle TextDes = TextStyle(
  fontSize: 14,
    color: AppColor.black50
  );
  static TextStyle TextDesBlack = TextStyle(
      fontSize: 14,
      color: AppColor.blackColor
  );
  static EdgeInsets paddingHoriZontal= EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets TopOnly =  EdgeInsets.only(top: 8);
  static EdgeInsets ButtomOnly = EdgeInsets.only(bottom: 21);
}