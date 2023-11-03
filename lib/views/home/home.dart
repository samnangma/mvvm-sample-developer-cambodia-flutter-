import 'package:carousel_slider/carousel_slider.dart';
import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/views/home/widgets/Category.dart';
import 'package:developer_cambodia/views/home/widgets/popular_course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int activeIndex = 0;
  final controller = CarouselController();

  final animationFiles = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.jpg',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',
    'assets/images/11.png',
    'assets/images/12.png',
    'assets/images/13.png',
    'assets/images/14.png',
    'assets/images/15.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //app bar
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: AppColor.primaryColor,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 72,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(50)),
                                child: Image.asset(
                                  'assets/images/bros_srat.jpg',
                                  height: 80,
                                  width: 80,
                                ),
                              ),
                              SizedBox(
                                width: 13,
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(color: AppColor.blackColor),
                                  children: [
                                    TextSpan(
                                      text: 'សូរស្តី, Samnang\n',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'តោះចាប់ផ្តើមរៀនទាំងអស់គ្នា!',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.notifications_none_sharp),
                              SizedBox(
                                width: 9,
                              ),
                              Icon(Icons.shopping_cart_outlined),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                              color: AppColor.primaryWhite.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 19,
                                ),
                                Icon(
                                  Icons.search_outlined,
                                  color: AppColor.black50,
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: AppColor.primaryWhite.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Center(
                                child: Icon(Icons.tune),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 21,
                  ),

                  //carousel
                  Stack(
                    children: [
                      CarouselSlider.builder(
                        carouselController: controller,
                        itemCount: animationFiles.length,
                        itemBuilder: (context, index, realIndex) {
                          final animationFile = animationFiles[index];
                          return buildImageAnimation(animationFile, index);
                        },
                        options: CarouselOptions(
                          height:   180,
                          autoPlay: true,
                          enableInfiniteScroll: false,
                          autoPlayAnimationDuration: const Duration(seconds: 2),
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex = index),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 100,
                        child: buildIndicator(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 21,
                  ),
                 Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColor.primaryDarkColor,
                          ),
                        ),
                      ],
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 80,
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: CategoryCard(),
                        ),
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  //Popular Course
                  SizedBox(height: 21,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Course",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppColor.primaryDarkColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height*.25,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: PopularCourse()
                        );
                      },
                    ),
                  ),
                  //Recommend Course
                  //Popular Course
                  SizedBox(height: 21,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recommend Course",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppColor.primaryDarkColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8,),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height*.25,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                            padding: EdgeInsets.only(right: 12),
                            child: PopularCourse()
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget buildIndicator() => AnimatedSmoothIndicator(
    onDotClicked: animateToSlide,
    effect: const ExpandingDotsEffect(
        dotWidth: 7,
        dotHeight: 7,
        dotColor: Colors.white,
        activeDotColor: Colors.deepOrangeAccent
    ),
    activeIndex: activeIndex,
    count: animationFiles.length,
  );

  void animateToSlide(int index) => controller.animateToPage(index);

  // Helper method to build Lottie animations
  Widget buildImageAnimation(String animationFile, int index) => Image.asset(
    animationFile,
  );

}




