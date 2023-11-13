import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';
import 'widget/Chip.dart';
import 'widget/PopularCourse.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: 30,
        ),
        title: Text(
          "ស្វែងរក",
          style: AppSize.AppBarTitle,
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.notifications_none_sharp,
            size: 30,
          ),
          Icon(Icons.shopping_cart_outlined, size: 30),
          SizedBox(
            width: 10,
          )
        ],
        backgroundColor: AppColor.primaryDarkColor,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.blue,
            ),
            Container(
              color: AppColor.primaryDarkColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 15,left: 21,right: 21,bottom: 35),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                        color: AppColor.primaryWhite.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 19,
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'ស្វែងរក',
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.search_outlined,
                            color: AppColor.black50,
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: ()=> _showBottomSheet(context),
                        child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                            color: AppColor.primaryWhite.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Center(
                            child: Icon(Icons.tune),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.sizeOf(context).height*.1,
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight:Radius.circular(14) ),
                  color: AppColor.primaryWhite
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 21,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21),
                        child: Row(
                          children: [
                            ChipTag(),
                            SizedBox(width: 14,),
                            ChipTag(),
                            SizedBox(width: 14,),
                            ChipTag(),
                          ],
                        ),
                      ),
                      SizedBox(height: 8,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 21),
                        child: Row(
                          children: [
                            ChipTag(),
                            SizedBox(width: 14,),
                            ChipTag(),
                            SizedBox(width: 14,),
                            ChipTag(),
                          ],
                        ),
                      ),
                      SizedBox(height: 21,),
                      Padding(padding: EdgeInsets.only(left: 21),
                      child: Text('វគ្គសិក្សាពេញនិយម',style: AppSize.SubTitle,),),
                      SizedBox(height: 21,),
                      Padding(padding: EdgeInsets.only(bottom: 8),
                        child: PopularCouse(),),
                      Padding(padding: EdgeInsets.only(bottom: 8),
                        child: PopularCouse(),),
                      Padding(padding: EdgeInsets.only(bottom: 8),
                        child: PopularCouse(),),
                      Padding(padding: EdgeInsets.only(bottom: 8),
                        child: PopularCouse(),),
                      Padding(padding: EdgeInsets.only(bottom: 8),
                        child: PopularCouse(),),Padding(padding: EdgeInsets.only(bottom: 8),
                        child: PopularCouse(),),Padding(padding: EdgeInsets.only(bottom: 8),
                        child: PopularCouse(),),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9, // Set the height to 90% of the screen height
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), // Set the borderRadius to 14
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 120,),
                      Text(
                        'ស្វែងរក Filter',
                        style: AppSize.TitleCourse,
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close),
                      ),
                    ],
                  ),
                  SizedBox(height: 21,),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(padding: EdgeInsets.only(left: 21),
                      child: Text('ប្រភេទ',style: AppSize.SubTitle,),),
                  ),
              SizedBox(height: 8,),
                Row(
                  children: [
                    ChipTag(),
                    SizedBox(width: 14,),
                    ChipTag(),
                    SizedBox(width: 14,),
                    ChipTag(),
                  ],
                ),
                  SizedBox(height: 21,),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(padding: EdgeInsets.only(left: 21),
                      child: Text('រយៈពេល',style: AppSize.SubTitle,),),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      ChipTag(),
                      SizedBox(width: 14,),
                      ChipTag(),
                      SizedBox(width: 14,),
                      ChipTag(),
                    ],
                  ),
                  SizedBox(height: 21,),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(padding: EdgeInsets.only(left: 21),
                      child: Text('តម្លៃ',style: AppSize.SubTitle,),),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      ChipTag(),
                      SizedBox(width: 14,),
                      ChipTag(),
                      SizedBox(width: 14,),
                      ChipTag(),
                    ],
                  ),
                  SizedBox(height: 21,),
                  GestureDetector(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width*.9,
                      height: 56,
                      decoration: BoxDecoration(
                        color: AppColor.primaryDarkColor,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Text('រើសយក Filter',style: AppSize.SubTitle,)
                      ),
                    ),
                  ),
                  SizedBox(height: 21,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width*.9,
                      height: 56,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.primaryDarkColor,width: 2),
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                          child: Text('Cancel',style: AppSize.SubTitle,)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
