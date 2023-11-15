import 'package:developer_cambodia/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'viewmodel/user_vew_model.dart';
import 'views/forum/forum.dart';
import 'views/forum/forum_answer/forum_answer.dart';
import 'views/forum/forum_one/detail.dart';
import 'views/forum/forum_specific/specific.dart';
import 'views/home/home.dart';
import 'views/mentor/mentor.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserViewModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "NotoSerifKhmer",
          useMaterial3: true,
        ),
        home:HomeScreen(),
      ),
    );
  }
}





