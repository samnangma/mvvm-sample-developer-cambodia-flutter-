import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

class OtherCourse extends StatelessWidget {
  const OtherCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * .135,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: AppColor.gray50,
        width: 2
      )),
      child: GestureDetector(
        child: Row(
          children: [
            SizedBox(
              width: 130,
              height: double.maxFinite*.9,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                Radius.circular(10)),
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
                          style: AppSize.SubTitle.copyWith(color: AppColor.secondaryDarkColor)
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.star,color: AppColor.primaryDarkColor,),
                              SizedBox(
                                width: 5,
                              ),
                              RichText(
                                  text: TextSpan(
                                text:   '5.0',
                                style: AppSize.TextDes,
                                children: [
                                  TextSpan(
                                    text: ' (500)'
                                  )
                                ]
                              ))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                             Row(
                               children: [
                                 Icon(Icons.file_copy,color: AppColor.secondaryDarkColor,),
                                 RichText(
                                     text: TextSpan(
                                         text:   '16',
                                         style: AppSize.TextDes.copyWith(color:AppColor.secondaryDarkColor),
                                         children: [
                                           TextSpan(
                                               text: ' Lessons'
                                           )
                                         ]
                                     ))
                               ],
                             ),
                              Spacer(),
                              RichText(
                                  text: TextSpan(
                                      text:   '៤០',
                                      style: AppSize.TextDes.copyWith(color:AppColor.secondaryDarkColor),
                                      children: [
                                        TextSpan(
                                            text: 'ម៉ឺនរៀល'
                                        )
                                      ]
                                  )),
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
