
import 'package:deverloper_cambodia/views/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'views/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}



