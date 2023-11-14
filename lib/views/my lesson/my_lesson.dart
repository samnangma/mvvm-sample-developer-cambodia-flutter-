import 'package:developer_cambodia/views/course/widgets/lesson_page.dart';
import 'package:developer_cambodia/views/my%20lesson/widget/certificate_page.dart';
import 'package:flutter/material.dart';

class MyLesson extends StatelessWidget {
  const MyLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("មេរៀន"),
          centerTitle: true,

          bottom: TabBar(
              indicatorColor: Colors.yellow,
              labelColor: Colors.yellow,
              tabs: [
                Tab(
                  text: "មេរៀន",
                ),
                Tab(
                  text: "សញ្ញាប័ត្រ",
                )
              ]
          ),
        ),
        body: TabBarView(
            children: [
              LessonPage(),
              CertificatePage()
            ]
        ),
      ),
    );
  }
}
