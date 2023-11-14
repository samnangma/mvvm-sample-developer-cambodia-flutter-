import 'package:developer_cambodia/constants/colors.dart';
import 'package:flutter/material.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("About Course",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 36),
                      children: <TextSpan>[
                        TextSpan(text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry is standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type', style: TextStyle(color: Colors.black54)),
                        TextSpan(text: ' specimen book', style: TextStyle(decoration: TextDecoration.underline, color: AppColor.primaryColor))
                      ],
                    ),
                    textScaleFactor: 0.5,
                  )
                ],
              ),
              const SizedBox(height: 25,),
              const Align(
                alignment: Alignment.topLeft,
                  child: Text("Tutorail", style: TextStyle(fontSize: 16),)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        child: Image.asset(
                          'assets/images/bros_srat.jpg',
                          height: 70,
                          width: 70,
                        ),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Kit tara", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                          Text("Blockchain Tutorail")
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.call, color: AppColor.whiteColor,)
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.message, color: AppColor.whiteColor,)
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Info",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Text("Last update: "),
                      Text("20/10/2023")
                    ],
                  ),
                  Row(
                    children: [
                      Text("Language: "),
                      Text("English")
                    ],
                  ),
                  Row(
                    children: [
                      Text("Language: "),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 25),
                          children: <TextSpan>[
                            TextSpan(text: 'English, Chinese, '),
                            TextSpan(text: ' 4 more', style: TextStyle(color: AppColor.primaryColor))
                          ],
                        ),
                        textScaleFactor: 0.5,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Align(
                alignment: Alignment.topLeft,
                  child: Text("What you'll learn", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.abc_outlined),
                      SizedBox(width: 10,),
                      Expanded(child: Text("Go from Beginner to Advanced in Cryptocurrency, gain financial freedom and escape recession in today's economic collapse!"))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.abc_outlined),
                      SizedBox(width: 10,),
                      Expanded(child: Text("Go from Beginner to Advanced in Cryptocurrency, gain financial freedom and escape recession in today's economic collapse!"))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.abc_outlined),
                      SizedBox(width: 10,),
                      Expanded(child: Text("Go from Beginner to Advanced in Cryptocurrency, gain financial freedom and escape recession in today's economic collapse!"))
                    ],
                  )
                ],
              )

            ],
          ),
        ),
      ),


      bottomNavigationBar: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[100]
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("Total Price: "),
                  Text("\$ 180.0")
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.primaryDarkColor)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                        child: Text("Add to cart", style: TextStyle(fontSize: 16, color: AppColor.primaryDarkColor),),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.primaryDarkColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
                        child: Text("Enroll Now", style: TextStyle(fontSize: 16, color: Colors.white),),
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
