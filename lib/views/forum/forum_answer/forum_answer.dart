import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

class ForumAnswer extends StatelessWidget {
  const ForumAnswer({super.key});

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
    title: Text("បង្ហោះចម្លើយ", style: AppSize.TitleCourse),
    centerTitle: true,
    ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none,
                    hintText: 'តើអ្វីជាលេខកូដពិបាកបំផុត?.............'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 221,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    decoration: InputDecoration(border: InputBorder.none,
                    hintText:
                        '<div class="container"> ..................'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: (){
        },
        icon: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: AppColor.primaryDarkColor,
          ),
          child: Icon(Icons.telegram,color: AppColor.whiteColor,size: 30,),
        ),
      ),
    );
  }
}
