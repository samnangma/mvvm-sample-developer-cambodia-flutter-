import 'package:developer_cambodia/views/my%20course/widget/course_card.dart';
import 'package:flutter/material.dart';


class ContinueLearning extends StatelessWidget {
  const ContinueLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("ការសិក្សារបស់ខ្ញុំ"),
          centerTitle: true,

          bottom: TabBar(
            indicatorColor: Colors.yellow,
              labelColor: Colors.yellow,
              tabs: [
                Tab(
                  text: "កំពុងរៀន",
                ),
                Tab(
                  text: "បានបញ្ចប់",
                )
              ]
          ),
        ),
        body: const TabBarView(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CourseCard(),
                      SizedBox(height: 10,),
                      CourseCard(),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CourseCard(),
                      SizedBox(height: 10,),
                      CourseCard(),
                    ],
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}


