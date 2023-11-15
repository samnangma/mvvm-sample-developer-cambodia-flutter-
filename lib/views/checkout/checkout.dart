
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/size.dart';
import 'widget/checkout.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back,size: 41,),
        ),
        title: const Text("Checkout",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28
        ),),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          SizedBox(height: 21,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CheckoutCourse(),
          ),
          SizedBox(height: 21,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                     children: [
                       Text("Language:"),
                       Spacer(),
                       Text("English"),
                     ],
             ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Lesson:"),
                Spacer(),
                Text("20"),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Subtitle: "),
                Spacer(),
                Text("English,Chines,4more"),
              ],
            ),
          ),
          SizedBox(height: 21,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Divider(thickness: 2),
          ),
          SizedBox(height: 21,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Amount:"),
                Spacer(),
                Text("\$ 1000.0"),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Tax:"),
                Spacer(),
                Text("\$ 50.0"),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text("Total: "),
                Spacer(),
                Text("\$ 1050.0"),
              ],
            ),
          ),
          SizedBox(height: 21,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Divider(thickness: 2),
          )
        ],
      ),
      bottomSheet:
      Padding(
        padding: const EdgeInsets.only(bottom: 2),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40,vertical: 27),
            child: Row(
              children: [
                RichText(text: TextSpan(
                    style: AppSize.TextDes,
                    text: 'សរុប',
                    children: [
                      TextSpan(text: '\n២ លានរៀល',
                          style: AppSize.TextDesBlack)
                    ]
                )),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.primaryDarkColor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 61,vertical: 10),
                    child: Text('ទិញឥឡូវ',style: AppSize.SubTitle.copyWith(color: AppColor.primaryWhite),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
