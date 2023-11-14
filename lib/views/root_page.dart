import 'package:developer_cambodia/views/home/home.dart';
import 'package:developer_cambodia/views/my%20course/continue_learning.dart';
import 'package:developer_cambodia/views/profile%20account/profile_account.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyRootPage extends StatefulWidget {
  const MyRootPage({super.key});

  @override
  State<MyRootPage> createState() => _MyRootPageState();
}

class _MyRootPageState extends State<MyRootPage>{
  int currentPage = 0;

  List<Widget> pages = const [
    HomeScreen(),
    ContinueLearning(),
    HomeScreen(),
    ProfileAccount(),
    ProfileAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: pages[currentPage],
      bottomNavigationBar: bottomNavigationBar(),
    );
  }
  Padding bottomNavigationBar() {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            color: Colors.grey,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blueAccent.shade200,
            gap: 8,
            onTabChange: (index) => setState(() => currentPage = index),
            selectedIndex: currentPage,
            padding: const EdgeInsets.all(14),
            tabs: const [
              GButton(icon: Icons.home, text: "Home"),
              GButton(icon: Icons.mail, text: "Enroll"),
              GButton(icon: Icons.flashlight_on, text: "News"),
              GButton(icon: Icons.warning, text: "About Us"),
              GButton(icon: Icons.warning, text: "About Us"),
            ],
          ),
        ),
      ),
    );
  }

}