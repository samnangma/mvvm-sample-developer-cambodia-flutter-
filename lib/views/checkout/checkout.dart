
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import 'widget/checkout.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
        GestureDetector(
          onTap: (){},
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: AppColor.gray50)
            ),
            child: Icon(Icons.arrow_back,size: 41,),
          ),
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
    );
  }
}
