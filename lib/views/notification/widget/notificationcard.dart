import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/size.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              width: 53,
              height: 51,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColor.gray50,
              ),
              child: Center(
                child: Icon(Icons.archive,size: 30,color: AppColor.primaryDarkColor,),
              ),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ការទទួលបាន សញ្ញាបត្តិ ',style: AppSize.SubTitle,),
                  Text('អបអរសាទរវិញ្ញាបនបត្ររបស់អ្នកឥឡូវអាចទាញយកបានហើយសូមចូលទៅកាន់វេទិការបស់យើងដើម្បីចូលប្រើ',style: AppSize.TextDes,)
                ],
              ),
            ),
          ),
          Container(
              width:  60,
              child: Text('1 ម៉ោងមុន',style: AppSize.TextDes,))
        ],
      ),
    );
  }
}
