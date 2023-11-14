import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';
import '../forum_answer/forum_answer.dart';

class Specific extends StatelessWidget {
  const Specific({super.key});

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
        title: Text("100 គាំទ្រ", style: AppSize.TitleCourse),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
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
                      ),
                      SizedBox(width: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_up,
                                size: 30,
                                color: AppColor.primaryDarkColor,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 30,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.close_rounded,
                                size: 25,
                              ),
                              Text('2'),
                            ],
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
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
                      ),
                      SizedBox(width: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_up,
                                size: 30,
                                color: AppColor.primaryDarkColor,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 30,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.close_rounded,
                                size: 25,
                              ),
                              Text('2'),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          'តើភាសាអ្វីដែលល្អបំផុតសម្រាប់អ្នក?',
                          style: AppSize.TextDes,
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: double.maxFinite,
                          height: MediaQuery.of(context).size.height*.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.black70
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'តimport java.util.Scanner;Scanner scanner = new Scanner(System.in);String input = scanner.nextLine();import java.util.Scanner;Scanner scanner = new Scanner(System.in);String input = scanner.nextLine();',
                              style: AppSize.TextDes.copyWith(color: AppColor.primaryWhite),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(height: 20,),
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
                      ),
                      SizedBox(width: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_up,
                                size: 30,
                                color: AppColor.primaryDarkColor,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 30,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.close_rounded,
                                size: 25,
                              ),
                              Text('2'),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text(
                          'តើភាសាអ្វីដែលល្អបំផុតសម្រាប់អ្នក?',
                          style: AppSize.TextDes,
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: double.maxFinite,
                          height: MediaQuery.of(context).size.height*.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColor.black70
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'តimport java.util.Scanner;Scanner scanner = new Scanner(System.in);String input = scanner.nextLine();import java.util.Scanner;Scanner scanner = new Scanner(System.in);String input = scanner.nextLine();',
                              style: AppSize.TextDes.copyWith(color: AppColor.primaryWhite),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ForumAnswer(),));
        },
        icon: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColor.primaryDarkColor,
        ),
        child: Icon(Icons.edit,color: AppColor.whiteColor,size: 30,),
      ),
      ),
    );
  }
}
