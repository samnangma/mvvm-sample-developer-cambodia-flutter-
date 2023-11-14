import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';
import 'widget/DetailCard.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 41,
          ),
        ),
        title: Text("តើ java programming ជាអ្វី?", style: AppSize.TitleCourse),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: AppColor.whiteColor,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/images/bros_srat.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Jonh Deo',
                                style: AppSize.SubTitle,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 18,
                                height: 14,
                                color: AppColor.primaryDarkColor,
                                child: Center(
                                  child: Icon(
                                    Icons.dark_mode,
                                    size: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text('50 នាទីមុន')
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text('10+'),
                          Icon(Icons.messenger),
                          SizedBox(
                            width: 5,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'តើភាសាអ្វីដែលល្អបំផុតសម្រាប់អ្នក?',
                          style: AppSize.SubTitle,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text('10'),
                                Icon(
                                  Icons.keyboard_arrow_up,
                                  size: 30,
                                  color: AppColor.primaryDarkColor,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text('100'),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 30,
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            DetailForum(),
            SizedBox(height: 10,),
            DetailForum(),
            SizedBox(height: 10,),
            DetailForum(),
            SizedBox(height: 10,),
            DetailForum(),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}


