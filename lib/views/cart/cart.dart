
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/size.dart';
import '../checkout/checkout.dart';
import 'widget/CartCourse.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 41,
          ),
        ),
        title: Text("Cart", style: AppSize.AppBarTitle),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
        //course cart
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => Padding(
                  padding: AppSize.ButtomOnly,
                  child: Add_Cart(),
                )),
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Checkout(),));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColor.primaryDarkColor,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 61,vertical: 10),
                      child: Text('ទិញឥឡូវ',style: AppSize.SubTitle.copyWith(color: AppColor.primaryWhite),),
                    ),
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
