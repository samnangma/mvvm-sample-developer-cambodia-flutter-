import 'package:developer_cambodia/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../checkout/checkout.dart';
import 'widget/CartCourse.dart';
void main(){
  runApp( MyApp1());
}
class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Checkout(),
    );
  }
}
class Cart extends StatelessWidget {
  const Cart({super.key});

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
        title: Text("Cart",style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28
        ),),
        centerTitle: true,
        ),
      body:Padding(
        padding: const EdgeInsets.all(21.0),
        //course cart
        child: ListView.builder(
          itemCount:10 ,
            itemBuilder: (context, index) =>Padding(padding: EdgeInsets.only(bottom: 21),
            child: Add_Cart(),)),
      ),
    );
  }
}


