import 'package:developer_cambodia/views/sign_up/complete_information/complete_info_form.dart';
import 'package:flutter/material.dart';

class CompleteInfo extends StatelessWidget {
  const CompleteInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image(
            image: AssetImage("assets/logos/logo.png"),
            height: size.height * 0.2,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Developers Cambodia",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 70,
          ),
          const CompleteInforForm(),

        ]),
      ),
    )));
  }
}
