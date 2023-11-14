
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';
import 'widget/notificationcard.dart';

class Noftification extends StatelessWidget {
  const Noftification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(icon: Icon(Icons.arrow_back,size: 41,),onPressed: (){
          Navigator.pop(context);
        },),
        title: Text("សេចក្តីជូនដំណឹង",style:AppSize.AppBarTitle),
        centerTitle: true,
        actions: [
          Chip(
            label: Text('2 NEW'),
            shape: StadiumBorder(),
            backgroundColor: AppColor.primaryDarkColor,
            side: BorderSide.none,
            labelStyle: TextStyle(
              color: AppColor.black70,
            ),
          ),
          SizedBox(width: 5,)
        ],
      ),
      body:SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: AppSize.paddingHoriZontal,
              child: Text("ថ្ងៃនេះ",style:AppSize.AppBarTitle),
            ),
            SizedBox(height: 21,),
            Padding(
              padding: AppSize.paddingHoriZontal,
              child: SizedBox(
                height: MediaQuery.of(context).size.height*.8,
                child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) => Padding(padding: AppSize.ButtomOnly,
                child: NotificationCard(),),),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}

