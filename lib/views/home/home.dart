import 'package:carousel_slider/carousel_slider.dart';
import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/views/home/widgets/category_card.dart';
import 'package:developer_cambodia/views/home/widgets/popular_course.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/fonts.dart';

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
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        backgroundColor: AppColor.primaryColor,
        title: Row(
          children: [
            GestureDetector(
                  onTap: (){},
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(50)),
                child: Image.asset(
                  'assets/images/bros_srat.jpg',
                  height: 70,
                  width: 70,
                ),
              ),
            ),
            const SizedBox(width: 10,),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "សួរស្តី, Samnang",
                  style: TextStyle(fontWeight: SemiBold),
                ),
                SizedBox(height: 10),
                Text(
                  "តោះចាប់ផ្តើមរៀនទាំងអស់គ្នា!",
                  style: TextStyle(fontSize: 17, fontWeight: Light),
                )
              ],
            )
          ],
        ),
        actions: const [
          Icon(
            Icons.notifications_none_sharp,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_cart_outlined,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),


      body: CustomScrollView(
        slivers: [

          //search bar
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 80,
            pinned: false,
            floating: true,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: AppColor.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15, vertical: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: AppColor.primaryWhite.withOpacity(0.9),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Row(
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
                            color: AppColor.primaryWhite.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: const Center(
                            child: Icon(Icons.tune),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),


          //carousel
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Stack(
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
            ),
          ),


          //category
          SliverToBoxAdapter(
            child:  Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Row(
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
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: CategoryCard(),
                      ),

                    ),
                  ),

                ],
              ),
            ),
          ),


          //popular course
          SliverToBoxAdapter(
            child:  Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Row(
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
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return const Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: PopularCourse()
                        );
                      },
                    )
                  )
                ],
              ),
            )
          ),


          //best instructor
          SliverToBoxAdapter(
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Row(
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
                    const SizedBox(height: 10,),
                    SizedBox(
                        height: 230,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return const Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: PopularCourse()
                            );
                          },
                        )
                    )
                  ],
                ),
              )
          ),


        ],
      )
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




