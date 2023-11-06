import 'dart:ui';

import 'package:flutter/cupertino.dart';

import 'colors.dart';

class Size{
  static TextStyle AppBarTitle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold
      );
  static TextStyle SubTitle =TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold
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
  static Padding paddingHoriZontal=Padding(padding:
    EdgeInsets.symmetric(horizontal: 20),);
  static Padding TopOnly = Padding(padding: EdgeInsets.only(top: 8));
  static Padding ButtomOnly = Padding(padding: EdgeInsets.only(bottom: 21));
}