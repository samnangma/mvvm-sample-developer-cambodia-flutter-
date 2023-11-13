import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,// half of the desired width or height
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/bros_srat.jpg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Dale Thiel',style: AppSize.SubTitle,)
                ],
              ),
              Spacer(),
              Text('1 ខែមុន',style: AppSize.TextDes,)
            ],
          ),
          SizedBox(height: 8,),
          Text('វាជាវគ្គសិក្សាដ៏អស្ចារ្យ!!! Tutor ពន្យល់ពី subject ដ៏ស្មុគ្រស្មាញនៃ crytocurrency world ដល់មនុស្សជាមធ្យមយ៉ាងសាមញ្ញ និងកម្សាន្ត។'),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(
                width: 120,
                child: Row(
                  children: [
                    Expanded(child: Icon(Icons.star,color: AppColor.primaryDarkColor,)),
                    Expanded(child: Icon(Icons.star,color: AppColor.primaryDarkColor,)),
                    Expanded(child: Icon(Icons.star,color: AppColor.primaryDarkColor,)),
                    Expanded(child: Icon(Icons.star,color: AppColor.primaryDarkColor,)),
                    Expanded(child: Icon(Icons.star,color: AppColor.primaryDarkColor,)),
                  ],
                ),
              ),
              SizedBox(width: 10,),
              Text('5.0',style: AppSize.TextDes,)
            ],
          )
        ],
      ),
    );
  }
}