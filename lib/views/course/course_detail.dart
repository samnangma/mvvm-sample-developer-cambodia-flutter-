
import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/constants/fonts.dart';
import 'package:developer_cambodia/views/course/widgets/about_page.dart';
import 'package:developer_cambodia/views/course/widgets/lesson_page.dart';
import 'package:developer_cambodia/views/course/widgets/review_page.dart';
import 'package:flutter/material.dart';


class CourseDetail extends StatefulWidget {
  const CourseDetail({super.key});

  @override
  State<CourseDetail> createState() => _CourseDetailState();
}

class _CourseDetailState extends State<CourseDetail> with SingleTickerProviderStateMixin{


  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Replace '3' with the number of tabs you have
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SingleChildScrollView(
                    child: SizedBox(
                      height: 1000,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 300,
                            decoration: const BoxDecoration(
                              color: Colors.deepPurple,
                            ),
                          ),
                          Positioned(
                              top: 40,
                              child: IconButton.filledTonal(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.black,
                                  )
                              )
                          ),
                          Positioned(
                              top: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.15,
                              left: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.35,
                              child: Container(
                                color: Colors.grey[100],
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      IconButton.filledTonal(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.arrow_back,
                                            color: Colors.black,
                                          )
                                      ),
                                      Text(
                                          "Course Preview"
                                      )
                                    ],
                                  ),
                                ),
                              )
                          ),
                          Positioned(
                            top: 270,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: MediaQuery.of(context).size.height,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30),
                                      topLeft: Radius.circular(30)
                                  )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.yellow,
                                                borderRadius: BorderRadius.circular(
                                                    20)
                                            ),

                                            child: const Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text("Best seller"),
                                            ),
                                          ),
                                          const Row(
                                            children: [
                                              Text("4", style: TextStyle(
                                                  color: AppColor
                                                      .primaryDarkColor),),
                                              SizedBox(width: 10,),
                                              Row(
                                                children: [
                                                  Icon(Icons.star,
                                                    color: Colors.yellow,),
                                                  Icon(Icons.star,
                                                    color: Colors.yellow,),
                                                  Icon(Icons.star,
                                                    color: Colors.yellow,),
                                                  Icon(Icons.star,
                                                    color: Colors.yellow,)
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    const Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("Learn Blockchain for beginner",
                                          style: TextStyle(
                                              fontSize: 25, fontWeight: Medium),)
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.people),
                                            TextButton(
                                                onPressed: (){},
                                                    child: Text("Kit tara")
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.people),
                                            TextButton(
                                                onPressed: (){},
                                                child: Text("Lesson")
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(Icons.people),
                                            TextButton(
                                                onPressed: (){},
                                                child: Text("Certificate")
                                            )
                                          ],
                                        )
                                      ],
                                    ),

                                   Container(
                                     child: TabBar(
                                       controller: _tabController,
                                         tabs: const [
                                           Tab(text: "About",),
                                           Tab(text: "Lesson",),
                                           Tab(text: "Review",)
                                         ]
                                     ),
                                   ),
                                    Container(
                                      height: 450,
                                      child: TabBarView(
                                        controller: _tabController,
                                          children: const [
                                            AboutPage(),
                                            LessonPage(),
                                            ReviewPage()
                                          ]
                                      ),
                                    )

                                  ],
                                ),
                              ),

                            ),
                          )
                        ],
                      ),
                    ),
                  )

                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}

