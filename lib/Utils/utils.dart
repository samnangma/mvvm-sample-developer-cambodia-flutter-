import 'package:flutter/material.dart';

class Utils {
    static void fieldFocusChangeLogin (BuildContext context , FocusNode current , FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
static void fieldFocusChangeRegister(
  BuildContext context,
  FocusNode current,
  FocusNode nextFocus,
  FocusNode anotherFocus,
) {
  current.unfocus();
  nextFocus.requestFocus();

  anotherFocus.unfocus();
}

}