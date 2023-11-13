import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

class PopularCouse extends StatelessWidget {
  const PopularCouse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height*.15,
        decoration: BoxDecoration(
          color: AppColor.primaryWhite,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: AppColor.black70.withOpacity(.25),
              offset: Offset(0, 0),
              blurRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Container(
                width:150,
                height: MediaQuery.sizeOf(context).height*.15,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset('assets/images/14.png',fit: BoxFit.cover)),
              ),
              SizedBox(width: 9,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('បច្ចេកវិទ្យាគួរឱ្យកត់សម្គាល់',style: AppSize.SubTitle.copyWith(color: AppColor.secondaryDarkColor),),
                  SizedBox(height: 11,),
                  Row(
                    children: [
                      Icon(Icons.star,color: AppColor.primaryDarkColor,),
                      SizedBox(width: 5,),
                      Text("5.0(500)",style: AppSize.TextDes,)
                    ],
                  ),
                  SizedBox(height: 11,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.file_copy_outlined,color: AppColor.black50,),
                          SizedBox(width: 5,),
                          Text("16 Lesson",style: AppSize.TextDes.copyWith(color: AppColor.secondaryDarkColor),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text("៤០ម៉ឺនរៀល",style: AppSize.TextDes.copyWith(color: AppColor.secondaryDarkColor,fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}