import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/constants/size.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 59,
            height: 59,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColor.primaryDarkColor,
            ),
            child: Icon(Icons.business_center_sharp,size: 27,color: AppColor.secondaryDarkColor,),
          ),
          SizedBox(height: 3,),
          Text("សិល្ប:",style:AppSize.SubTitle.copyWith(color: AppColor.secondaryDarkColor))
        ],
      ),
    );
  }
}