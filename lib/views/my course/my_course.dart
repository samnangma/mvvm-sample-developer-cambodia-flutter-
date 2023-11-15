import 'package:developer_cambodia/views/my%20course/widget/course_card.dart';
import 'package:developer_cambodia/views/my%20lesson/my_lesson.dart';
import 'package:flutter/material.dart';


class MyCourse extends StatelessWidget {
  const MyCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("វគ្គសិក្សា", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
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
        body: TabBarView(
            children: [
              const SingleChildScrollView(
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
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyLesson()));
                        },
                          child: const CourseCard()
                      ),
                      const SizedBox(height: 10,),
                      const CourseCard(),
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


