
import 'package:developer_cambodia/views/course/widgets/lesson_page.dart';
import 'package:developer_cambodia/views/my%20lesson/widget/other_page.dart';
import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class MyLesson extends StatefulWidget {
  const MyLesson({super.key});

  @override
  State<MyLesson> createState() => _MyLessonState();
}

class _MyLessonState extends State<MyLesson> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  final FlickManager flickManager = FlickManager(
    videoPlayerController: VideoPlayerController.networkUrl(
      Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    ),
  );

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 2, vsync: this); // Replace '3' with the number of tabs you have
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
        title: Text("មេរៀន", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: FlickVideoPlayer(flickManager: flickManager),
              ),
            ),
            Container(
              child: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.yellow,
                  labelColor: Colors.yellow,
                  tabs: const [
                    Tab(text: "មេរៀន", ),
                    Tab(text: "ផ្សេងៗទៀត",),
                  ]
              ),
            ),
            Container(
              height: 450,
              child: TabBarView(
                  controller: _tabController,
                  children: const [
                    LessonPage(),
                    OtherPage(),
                  ]
              ),
            )
          ],
        ),
      ),
    );
  }
}


