import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import 'about/about.dart';
import 'lesson/lesson.dart';
import 'rewiew/reviews.dart';

import '../../constants/size.dart';

class Mentor extends StatefulWidget {
  const Mentor({super.key});

  @override
  State<Mentor> createState() => _MentorState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MentorState extends State<Mentor>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120, // Set the desired height here
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
            ),
            child: Icon(Icons.arrow_back, size: 41),
          ),
        ),
        title: Text(
          "Mentor Detail",
            style: AppSize.AppBarTitle,
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Column(
            children: [
              SizedBox(height: 21),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30.5, // half of the desired width or height
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/bros_srat.jpg',
                          width: 61,
                          height: 61,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(text: 'សំ ណាង\n'),
                        TextSpan(text: 'Blockchain Tutor'),
                      ],style:TextStyle( color: AppColor.black70),
                    )),
                    Spacer(),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColor.primaryDarkColor,
                          ),
                          child: Icon(Icons.call,size: 30,color: AppColor.secondaryDarkColor,),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColor.primaryDarkColor,
                          ),
                          child: Icon(Icons.messenger,size: 30,color: AppColor.secondaryDarkColor),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: TabBar(
                      controller: _tabController,
                      indicatorColor: AppColor.primaryDarkColor,
                      labelColor: AppColor.primaryDarkColor,
                      tabs: [
                        Tab(
                          child: Text(
                            'About',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Lesson',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Reviews',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          //about section
          About(),
          Lesson(),
          Review(),
        ],
      ),
    );
  }
}
