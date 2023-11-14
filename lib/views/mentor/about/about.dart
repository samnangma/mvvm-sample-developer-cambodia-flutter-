import 'package:developer_cambodia/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../constants/size.dart';
class About extends StatelessWidget{
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Text('About',
              style:AppSize.SubTitle),
            SizedBox(height: 16,),
            RichText(
              text: TextSpan(
                text: 'ក្នុងនាមជាអតីតជំនួយការគ្រូបង្រៀន Marcus យល់ពីសារៈសំខាន់នៃការ ប្រាស្រ័យ ទាក់ទងច្បាស់លាស់ និងធ្វើឱ្យគំនិតស្មុគស្មាញងាយយល់ ។ ជាមួយនឹងបរិញ្ញាបត្រវិទ្យាសាស្ត្រ ពីសាកលវិទ្យាល័យ Utah State និងអនុបណ្ឌិតវិទ្យាសាស្ត្រពីសាកលវិទ្យាល័យ Edinboro នៃរដ្ឋ Pennsylvania គាត់មានមូលដ្ឋានគ្រឹះសិក្សាដ៏រឹងមាំសម្រាប់ការប្រកួតប្រជែង Udemy ។លោក Marcus បានរកឃើញចំណង់ចំណូលចិត្តរបស់គាត់ សម្រាប់ការបង្រៀន និងជួយអ្នកដទៃពេលកំពុងសិក្សានៅមហាវិទ្យាល័យ ជាកន្លែងដែលគាត់បានស្ម័គ្រចិត្តជួយសិស្សរួមនិងផ្តល់អំណោយដល់សហគមន៍វិញ។ ចំណង់ចំណូលចិត្តនេះបាននាំឱ្យគាត់បន្តចែករំលែកចំណេះដឹង និងជំនាញពេញមួយអាជីពរបស់គាត់។',
                style: TextStyle(color: AppColor.black50, fontSize: 16),
                children: [
                  TextSpan(
                    text: 'Read more',
                    style: TextStyle(
                      color: AppColor.primaryDarkColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Text('Info',
              style:AppSize.SubTitle,),
            SizedBox(height: 16,),
            Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Student, \n',
                      style: AppSize.TextDes,
                      children: [
                        WidgetSpan(
                          child: SizedBox(height: 30,), // Adjust the width as needed
                        ),
                        TextSpan(
                          text: '156,312',
                          style:AppSize.TextDesBlack,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 120,),
                  RichText(
                    text: TextSpan(
                      text: 'Course \n',
                      style: AppSize.TextDes,
                      children: [
                        WidgetSpan(
                          child: SizedBox(height: 30,), // Adjust the width as needed
                        ),
                        TextSpan(
                          text: '32',
                          style: AppSize.TextDesBlack
                        ),
                      ],
                    ),
                  ),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
