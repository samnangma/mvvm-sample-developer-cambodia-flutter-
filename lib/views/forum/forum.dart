import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';
import 'widget/chipTag.dart';

class Forum extends StatelessWidget {
  const Forum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("វេទិកា",style:AppSize.AppBarTitle),
        centerTitle: true,
        bottom: PreferredSize(preferredSize:Size.fromHeight(kToolbarHeight), child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: AppColor.black50.withOpacity(0.2),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Row(
            children: [
              SizedBox(
                width: 19,
              ),
              Icon(
                Icons.search_outlined,
                color: AppColor.black50,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'ស្វែងរក',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(height: 8,),
                Row(
                  children: [
                    SizedBox(width: 14,),
                    ChipTag(),
                    SizedBox(width: 14,),
                    ChipTag(),
                    SizedBox(width: 14,),
                    ChipTag(),
                  ],
                ),
                SizedBox(height: 21,),
                Container(
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
                      )
                    ],
                  ),
                )
              ],
          ),
        )
      ),
    );
  }
}
