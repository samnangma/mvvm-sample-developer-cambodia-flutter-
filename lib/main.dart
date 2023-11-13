import 'package:developer_cambodia/views/splash_screen/onboardingpage/onboarding_page.dart';
import 'package:flutter/material.dart';

import 'views/cart/cart.dart';
import 'views/category/category.dart';
import 'views/forum/forum.dart';
import 'views/home/home.dart';
import 'views/notification/notification.dart';
import 'views/search/search.dart';
import 'views/view.dart';


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
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}





