import 'package:developer_cambodia/views/course/course_detail.dart';
import 'package:developer_cambodia/views/home/home.dart';
import 'package:developer_cambodia/views/my%20course/continue_learning.dart';
import 'package:developer_cambodia/views/my%20lesson/my_lesson.dart';
import 'package:developer_cambodia/views/notification/notification_page.dart';
import 'package:developer_cambodia/views/profile%20account/change_language.dart';
import 'package:developer_cambodia/views/profile%20account/password_manager.dart';
import 'package:developer_cambodia/views/profile%20account/profile_account.dart';
import 'package:developer_cambodia/views/profile%20account/setting.dart';
import 'package:developer_cambodia/views/profile%20account/udpate_profile.dart';
import 'package:developer_cambodia/views/splash_screen/onboardingpage/onboarding_page.dart';
import 'package:developer_cambodia/views/splash_screen/splash_screen.dart';
import 'package:developer_cambodia/views/root_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "NotoSerifKhmer",
        useMaterial3: true,
      ),
      home: const MyRootPage(),
    );
  }
}





