import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import 'widget/mentorCourse.dart';

class Lesson extends StatelessWidget {
  const Lesson({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                text: 'Course ',
                style: TextStyle(color: AppColor.black70, fontSize: 18,fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: ' (32)',
                    style: TextStyle(
                      color: AppColor.primaryDarkColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            SizedBox(
              height:MediaQuery.of(context).size.height*.65,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => Padding(padding: EdgeInsets.only(bottom: 20),
                child: MentorCourse(),),),
            )
          ],
        ),
      ),
    );
  }
}


