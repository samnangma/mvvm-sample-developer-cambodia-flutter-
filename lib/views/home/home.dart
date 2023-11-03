
import 'package:deverloper_cambodia/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            color: AppColor.primaryWhite,
          ),
          Positioned(
            top: 0,
              left: 0,
              right: 0,
              child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height*.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
              color:  AppColor.primaryColor,
            ),
          ))
        ],
      ),
    );
  }
}
