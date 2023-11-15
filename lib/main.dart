

import 'package:developer_cambodia/views/notification/notification.dart';
import 'package:developer_cambodia/views/notification/notification_page.dart';
import 'package:developer_cambodia/views/root_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'viewmodel/user_vew_model.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        home: NotificationPage(),
      ),
    );
  }
}





