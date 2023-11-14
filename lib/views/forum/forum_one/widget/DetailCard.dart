import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/size.dart';
import '../../forum_specific/specific.dart';

class DetailForum extends StatelessWidget {
  const DetailForum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Specific(),));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 60,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Container(
                  child: Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Text('Jonh Deo', style: AppSize.SubTitle),
                          SizedBox(width: 5),
                          Container(
                            width: 18,
                            height: 14,
                            color: AppColor.primaryDarkColor,
                            child: Center(
                              child: Icon(Icons.dark_mode, size: 12),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * .38),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.linear_scale),
                      ),

                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .75,
                  child: Text(
                    "Python ជា programming language មួយសម្រាប់ begginer ដែលអាចចាប់ផ្ដើម សសេរ code ក្នុង program បាន។",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('1 នាទីមុន'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}