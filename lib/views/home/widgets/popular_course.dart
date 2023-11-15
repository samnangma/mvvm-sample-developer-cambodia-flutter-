import 'package:developer_cambodia/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../constants/size.dart';

class PopularCourse extends StatelessWidget {
  const PopularCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/13.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 4,
              right: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColor.primaryDarkColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 9,vertical: 3),
                  child: Text('លក់ដាច់ជាងគេ',style: AppSize.TextDes.copyWith(color: AppColor.primaryWhite),),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding:const EdgeInsets.only(top: 10.0, left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Learn Blockchain for beginner",
                style:AppSize.SubTitle),
              const Text(
                'Kit Dara',
              ),
              Row(
                children: [
                  Icon(Icons.star,color: AppColor.primaryDarkColor,size: 17,),
                  Icon(Icons.star,color: AppColor.primaryDarkColor,size: 17,),
                  Icon(Icons.star,color: AppColor.primaryDarkColor,size: 17,),
                  Icon(Icons.star,color: AppColor.primaryDarkColor,size: 17,),
                  Icon(Icons.star,color: AppColor.primaryDarkColor,size: 17,),
                  SizedBox(width: 5,),
                  RichText(text:TextSpan(
                    text:'5.0',style: AppSize.TextDesBlack,
                    children: [
                      TextSpan(
                        text: '(2000)',style: AppSize.TextDes
                      )
                    ]
                  ))
                ],
              ),
              Text(
                "៤០ ម៉ឺនរៀល",
                style:AppSize.TextDes.copyWith(color: AppColor.secondaryDarkColor)
              )
            ],
          ),
        )
      ],
    );
  }
}