import 'package:flutter/material.dart';
import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/views/home/home.dart';
import 'package:developer_cambodia/views/login/login_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 430,
              height: 932,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 92,
                    top: 105,
                    child: Center(
                      child: Container(
                        width: 250,
                        height: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/logos/logo.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 450,
                    child: Container(
                      width: 435,
                      height: 500,
                      decoration: const BoxDecoration(
                        color: AppColor.black70,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 30,
                    top: 480,
                    child: SizedBox(
                      width: 370,
                      height: 80,
                      child: Text(
                        'Welcome to \nDevelopers Cambodia',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 650,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Container(
                        width: 370,
                        height: 72,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 72, vertical: 22),
                        decoration: BoxDecoration(
                          color: AppColor.primaryDarkColor,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              color: Color(0xFF0C0000),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 746,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Container(
                        width: 370,
                        height: 72,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 72, vertical: 22),
                        decoration: BoxDecoration(
                          color: Color(0xFFF8E98E),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 4,
                            color: Color(0xFFF2F200),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 4,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Browse Courses',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 22,
                    top: 561,
                    child: SizedBox(
                      width: 386,
                      height: 59,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'd',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "ummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
