import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';
class CheckoutCourse extends StatelessWidget {
  const CheckoutCourse({
    super.key,s
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * .15,
      decoration: BoxDecoration(
        color: AppColor.primaryWhite,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Color(0X000000).withOpacity(.25),
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 1.0,
          ),
        ],
      ),
      child: GestureDetector(
        child: Row(
          children: [
            SizedBox(
              width: 130,
              height: double.maxFinite,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                child: Image.asset(
                  'assets/images/13.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(top: 6, left: 11, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'រៀន Blockchain គម្រិតដំបូង',
                          style: AppSize.SubTitleB50 ,
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.person,color: AppColor.black50,),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'គិត តារា',
                                style: AppSize.SubTitleB50 ,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                  '4.9',
                                  style: AppSize.SubTitle.copyWith(color: AppColor.primaryDarkColor)
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColor.primaryDarkColor,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                  '៤០ម៉ឺនរៀល',
                                  style: AppSize.SubTitle
                              ),
                              Spacer(),
                              IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,size: 25,))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
