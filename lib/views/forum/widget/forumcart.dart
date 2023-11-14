import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';
import '../forum_one/detail.dart';

class ForumCard extends StatelessWidget {
  const ForumCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(),));
      },
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColor.gray50.withOpacity(.5),
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
            borderRadius:BorderRadius.all(Radius.circular(10))
        ),
        child:Column(
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
                        SizedBox(width: 5,),
                        Text('Jonh Deo',style: AppSize.SubTitle,),
                        SizedBox(width: 5,),
                        Container(
                          width: 18,
                          height: 14,
                          color: AppColor.primaryDarkColor,
                          child: Center(
                            child: Icon(Icons.dark_mode,size: 12,),
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
                    SizedBox(width: 5,)
                  ],
                )
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('តើភាសាអ្វីដែលល្អបំផុតសម្រាប់អ្នក?',style:AppSize.SubTitle,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text('10'),
                          Icon(Icons.keyboard_arrow_up,size: 30,color: AppColor.primaryDarkColor,)
                        ],
                      ),
                      Row(
                        children: [
                          Text('100'),
                          Icon(Icons.keyboard_arrow_down,size: 30,)
                        ],
                      )
                    ],

                  )
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Chip(
                  label: Text('Programe'),
                  shape: StadiumBorder(),
                  backgroundColor: AppColor.primaryDarkColor.withOpacity(.2),
                  side: BorderSide.none,
                  labelStyle: TextStyle(
                    color: AppColor.primaryDarkColor,
                  ),
                ),
                SizedBox(width: 10,),
                Chip(
                  label: Text('Java'),
                  shape: StadiumBorder(),
                  backgroundColor: AppColor.secondaryDarkColor.withOpacity(.2),
                  side: BorderSide.none,
                  labelStyle: TextStyle(
                    color: AppColor.secondaryDarkColor,
                  ),
                ),
                SizedBox(width: 10,),
                Chip(
                  label: Text('C#'),
                  shape: StadiumBorder(),
                  backgroundColor: Colors.green.withOpacity(.2),
                  side: BorderSide.none,
                  labelStyle: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}