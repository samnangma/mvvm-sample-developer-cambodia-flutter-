import 'package:developer_cambodia/constants/size.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';
import 'widget/reviewItem.dart';

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
                style:AppSize.SubTitle.copyWith(color: AppColor.black70),
                children: [
                  TextSpan(
                    text: ' (45)',
                    style:AppSize.SubTitle.copyWith(color: AppColor.primaryDarkColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            // Container(
            //   height: 45,
            //   width: MediaQuery.of(context).size.width * 0.9,
            //   decoration: BoxDecoration(
            //     color: AppColor.grayColor.withOpacity(0.9),
            //     borderRadius: BorderRadius.circular(14),
            //   ),
            //   child: const Row(
            //     children: [
            //       SizedBox(
            //         width: 19,
            //       ),
            //       Icon(
            //         Icons.search_outlined,
            //         color: AppColor.primaryDarkColor,
            //       ),
            //       Expanded(
            //         child: TextField(
            //           decoration: InputDecoration(
            //             hintText: 'Search in Reviews',
            //             border: InputBorder.none,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 21,),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Row(
            //     children: [
            //       Chip(
            //         avatar:Icon(Icons.menu),
            //         label: Text('Filter'),
            //         shape: StadiumBorder(),
            //         backgroundColor: AppColor.grayColor,
            //         side: BorderSide.none,
            //         labelStyle: TextStyle(
            //           color: AppColor.black70,
            //         ),
            //       ),
            //       SizedBox(width: 21,),
            //       Chip(
            //         label: Text('Lasted'),
            //         shape: StadiumBorder(),
            //         backgroundColor: AppColor.grayColor,
            //         side: BorderSide.none,
            //         labelStyle: TextStyle(
            //           color: AppColor.black70,
            //         ),
            //       ),
            //       SizedBox(width: 21,),
            //       Chip(
            //         label: Text('New'),
            //         shape: StadiumBorder(),
            //         backgroundColor: AppColor.grayColor,
            //         side: BorderSide.none,
            //         labelStyle: TextStyle(
            //           color: AppColor.black70,
            //         ),
            //       ),
            //       SizedBox(width: 21,),
            //       Chip(
            //         label: Text('Detailed Review'),
            //         shape: StadiumBorder(),
            //         backgroundColor: AppColor.primaryDarkColor,
            //         side: BorderSide.none,
            //         labelStyle: TextStyle(
            //           color: AppColor.black70,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(bottom: 21),
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Padding(padding: AppSize.ButtomOnly,
                child: ReviewItem(),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}


