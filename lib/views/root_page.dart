
import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/views/home/home.dart';
import 'package:developer_cambodia/views/my%20course/my_course.dart';
import 'package:developer_cambodia/views/profile%20account/profile_account.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {

  int currentIndex = 0;

  List<Widget> pages = const [
    HomeScreen(),
    MyCourse(),
    HomeScreen(),
    HomeScreen(),
    ProfileAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize:30,
      selectedItemColor: AppColor.primaryDarkColor,
      selectedFontSize: 16,
      unselectedItemColor: Colors.grey,
      currentIndex: currentIndex,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      onTap: (index) => setState(() {
        currentIndex = index;
      }),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'ទំព័រដើម',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book_sharp),
          label: 'រៀន',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'ចំណាត់ថ្នាក់',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'វេទិកា',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'ប្រវត្ថិរូប',
        ),
      ],
    ),
    );
  }
}
