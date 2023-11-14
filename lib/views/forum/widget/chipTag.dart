import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class ChipTag extends StatelessWidget {
  const ChipTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text('បណ្ដាញ សង្គម'),
      shape: StadiumBorder(),
      backgroundColor: AppColor.grayColor,
      side: BorderSide.none,
      labelStyle: TextStyle(
        color: AppColor.black70,
      ),
    );
  }
}