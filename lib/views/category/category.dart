
import 'package:flutter/material.dart';

import '../../constants/size.dart';
import 'widget/category_card.dart';


class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.arrow_back,size: 41,),
        title: const Text("ប្រភេទ",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: AppSize.TopOnly,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Center(
                child: CategoryCard()
                ),
              );
          },
        ),
      )
    );
  }
}
