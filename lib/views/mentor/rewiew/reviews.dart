import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class Review extends StatelessWidget {
  const Review({super.key});

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
                text: 'Review ',
                style: TextStyle(color: AppColor.black70, fontSize: 18,fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: ' (45)',
                    style: TextStyle(
                      color: AppColor.primaryDarkColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: AppColor.grayColor.withOpacity(0.9),
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Row(
                children: [
                  SizedBox(
                    width: 19,
                  ),
                  Icon(
                    Icons.search_outlined,
                    color: AppColor.primaryDarkColor,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search in Reviews',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            const Chip(
              label:Text('Filter'),
              avatar: Icon(Icons.star),
              backgroundColor: Colors.blue,
              labelStyle: TextStyle(color: Colors.white),
              elevation: 50,
              padding: EdgeInsets.all(8),
            )
          ],
        ),
      ),
    );;
  }
}
