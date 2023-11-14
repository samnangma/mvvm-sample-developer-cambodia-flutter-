import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/size.dart';
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
            itemCount: 10,
            itemBuilder: (context, index) => Padding(
                  padding: AppSize.ButtomOnly,
                  child: Add_Cart(),
                )),
      ),
    );
  }
}
