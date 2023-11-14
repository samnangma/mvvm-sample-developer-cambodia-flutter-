

import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';
import 'widget/chipTag.dart';
import 'widget/forumcart.dart';


class Forum extends StatelessWidget {
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return CustomBottomSheet();
      },
    );
  }

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
                ForumCard(),
                SizedBox(height: 21,),
                ForumCard(),
                SizedBox(height: 21,),
                ForumCard(),
                SizedBox(height: 21,),
                ForumCard(),
                SizedBox(height: 21,),
                ForumCard(),
                SizedBox(height: 21,),
                ForumCard(),
                SizedBox(height: 21,),
                ForumCard(),
              ],
            ),
          )
      ),
      floatingActionButton: IconButton(
        onPressed: (){
          _openBottomSheet(context);
        },
        icon: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppColor.primaryDarkColor
          ),
          child: Center(
            child: Icon(Icons.add,color: AppColor.primaryWhite,),
          ),
        ),
      ),
    );
  }
}
class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text('Create Post'),
                Spacer(),
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon:Icon(Icons.close))
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(padding:EdgeInsets.only(left: 20),
          child: Text('ចំណងជើង'),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: AppColor.black50.withOpacity(.2)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(padding:EdgeInsets.only(left: 20),
            child: Text('មាតិកា'),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 221,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColor.black50.withOpacity(.2)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(padding:EdgeInsets.only(left: 20),
            child: Text('Tags'),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColor.black50.withOpacity(.2)
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                   children: [
                     Chip(
                       onDeleted: (){},
                       label: Text('Programe'),
                       shape: StadiumBorder(),
                       backgroundColor: AppColor.whiteColor,
                       side: BorderSide.none,
                       labelStyle: TextStyle(
                         color: AppColor.black70,
                       ),
                     ),
                     SizedBox(width: 10,),
                     Chip(
                       label: Text('Java'),
                       shape: StadiumBorder(),
                       onDeleted: (){},
                       backgroundColor: AppColor.whiteColor,
                       side: BorderSide.none,
                       labelStyle: TextStyle(
                         color: AppColor.black70,
                       ),
                     ),
                     SizedBox(width: 10,),
                     Chip(
                       label: Text('C#'),
                       shape: StadiumBorder(),
                       onDeleted: (){},
                       backgroundColor:AppColor.primaryWhite,
                       side: BorderSide.none,
                       labelStyle: TextStyle(
                         color: AppColor.black70,
                       ),
                     ),
                   ],
                  ),
                )
              ),
            ),
        ],
      )
    );
  }
}


