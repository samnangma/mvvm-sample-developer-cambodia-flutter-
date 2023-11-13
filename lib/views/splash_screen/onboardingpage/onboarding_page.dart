import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/views/login/login_screen.dart';
import 'package:developer_cambodia/views/welcome_page/welcome_page.dart';
import 'package:flutter/material.dart';



class OnboardingScreen extends StatefulWidget {
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int totalPages = 3;
  
  
   @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      if (_pageController.page == totalPages - 1) {
        // Navigating to another page when at the end
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomePage()),
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  } // Assuming there are 3 pages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: <Widget>[
              OnboardingPage(
                image: 'assets/logos/onboarding1.png',
                title: "ចាប់ផ្ដើមស្វែងយល់អំពីការ\nផ្សងព្រេងរបស់អ្នក",
                description: "ចាប់ផ្ដើមការរៀនសូត្រដោយការប្រើប្រាស់ technology \n ដោយមានភាពងាយស្រួលជាងមុន",
              ),
              OnboardingPage(
                image: 'assets/logos/onboarding2.png',
                 title: "ចាប់ផ្ដើមស្វែងយល់អំពីការ\nផ្សងព្រេងរបស់អ្នក",
                description: "ចាប់ផ្ដើមការរៀនសូត្រដោយការប្រើប្រាស់ technology \n ដោយមានភាពងាយស្រួលជាងមុន",
              ),
              OnboardingPage(
                image: 'assets/logos/onboarding1.png',
                title: "ចាប់ផ្ដើមស្វែងយល់អំពីការ\nផ្សងព្រេងរបស់អ្នក",
                description: "ចាប់ផ្ដើមការរៀនសូត្រដោយការប្រើប្រាស់ technology \nដោយមានភាពងាយស្រួលជាងមុន",
              ),
            ],
          ),
          Positioned(
            top: 40.0,
            right: 20.0,
            child: GestureDetector(
              onTap: () {
                // Navigate to another page, for instance, the login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                child: Text(
                  'Skip',
                  style: TextStyle(color: AppColor.primaryDarkColor, fontSize: 16.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  OnboardingPage({required this.image, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(image),
          const SizedBox(height: 40.0),
           RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'ចាប់ផ្ដើមស្វែងយល់អំពីការ\n',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: AppColor.blackColor, // First part of the text in blue
                  ),
                ),
                TextSpan(
                  text: 'ផ្សងព្រេងរបស់អ្នក',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: AppColor.secondaryDarkColor, // Second part of the text in black
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
         RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'ចាប់ផ្ដើមការរៀនសូត្រដោយការប្រើប្រាស់ ',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black, // Description in black
                  ),
                ),
                TextSpan(
                  text: 'technology', // Highlighting "technology" in blue
                  style: TextStyle(
                    fontSize: 16.0,
                    color: AppColor.secondaryColor, // Highlighted word in blue
                    fontWeight: FontWeight.bold, // Example: bold
                  ),
                ),
                TextSpan(
                  text: ' \nដោយមានភាពងាយស្រួលជាងមុន',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black, // Remaining description in black
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}






