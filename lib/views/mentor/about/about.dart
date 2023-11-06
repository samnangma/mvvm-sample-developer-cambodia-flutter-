import 'package:developer_cambodia/constants/colors.dart';
import 'package:flutter/material.dart';
class About extends StatelessWidget{
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text('About',
              style: TextStyle(
                fontSize: 18,
              ),),
            SizedBox(height: 16,),
            RichText(
              text: TextSpan(
                text: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, quas vel sint commodi repudiandae consequuntur  ',
                style: TextStyle(color: AppColor.black50, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Read more',
                    style: TextStyle(
                      color: AppColor.primaryDarkColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text('Info',
              style: TextStyle(
                fontSize: 18,
              ),),
            SizedBox(height: 16,),
            Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Student, \n',
                      style: TextStyle(color: AppColor.black50, fontSize: 16),
                      children: [
                        WidgetSpan(
                          child: SizedBox(height: 30,), // Adjust the width as needed
                        ),
                        TextSpan(
                          text: '156,312',
                          style: TextStyle(
                            color: AppColor.black70,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 120,),
                  RichText(
                    text: TextSpan(
                      text: 'Course \n',
                      style: TextStyle(color: AppColor.black50, fontSize: 16),
                      children: [
                        WidgetSpan(
                          child: SizedBox(height: 30,), // Adjust the width as needed
                        ),
                        TextSpan(
                          text: '32',
                          style: TextStyle(
                            color: AppColor.black70,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
            ),
            SizedBox(height: 20,),
            Text('Experience',
              style: TextStyle(
                fontSize: 18,
              ),),
            SizedBox(height: 16,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColor.black50.withOpacity(.5),
                  ),
                  child: Icon(Icons.call,size: 45,color: AppColor.black70,),
                ),
                SizedBox(width: 9,),
                RichText(
                  text: TextSpan(
                    text: 'Senior UI/UX Desinger \n',
                    style: TextStyle(color:  AppColor.black70, fontSize: 16),
                    children: [
                      WidgetSpan(
                        child: SizedBox(height: 26,),
                      ),
                      TextSpan(
                        text: '2020-Present',
                        style: TextStyle(
                            color:  AppColor.black50
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Icon(Icons.circle,color: AppColor.grayColor,),
                SizedBox(width: 5,),
                Text('Lorem ipsum dolor sit amet consectetur',style: TextStyle(
                  fontSize: 16,
                  color: AppColor.black50
                ),)
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Icon(Icons.circle,color: AppColor.grayColor,),
                SizedBox(width: 5,),
                Text('Lorem ipsum dolor sit amet consectetur',style: TextStyle(
                  fontSize: 16,
                  color: AppColor.black50
                ),)
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Icon(Icons.circle,color: AppColor.grayColor,),
                SizedBox(width: 5,),
                Text('Lorem ipsum dolor sit amet consectetur',style: TextStyle(
                  fontSize: 16,
                  color: AppColor.black50
                ),)
              ],
            ),
            SizedBox(height: 16,),
            Divider(),
            SizedBox(height: 20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: AppColor.black50.withOpacity(.5),
                  ),
                  child: Icon(Icons.call,size: 45,color: AppColor.black70,),
                ),
                SizedBox(width: 9,),
                RichText(
                  text: TextSpan(
                    text: 'Senior UI/UX Desinger \n',
                    style: TextStyle(color:  AppColor.black70, fontSize: 16),
                    children: [
                      WidgetSpan(
                        child: SizedBox(height: 26,),
                      ),
                      TextSpan(
                        text: '2020-Present',
                        style: TextStyle(
                            color:  AppColor.black50
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                Icon(Icons.circle,color: AppColor.grayColor,),
                SizedBox(width: 5,),
                Text('Lorem ipsum dolor sit amet consectetur',style: TextStyle(
                    fontSize: 16,
                    color: AppColor.black50
                ),)
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Icon(Icons.circle,color: AppColor.grayColor,),
                SizedBox(width: 5,),
                Text('Lorem ipsum dolor sit amet consectetur',style: TextStyle(
                    fontSize: 16,
                    color: AppColor.black50
                ),)
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Icon(Icons.circle,color: AppColor.grayColor,),
                SizedBox(width: 5,),
                Text('Lorem ipsum dolor sit amet consectetur',style: TextStyle(
                    fontSize: 16,
                    color: AppColor.black50
                ),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
