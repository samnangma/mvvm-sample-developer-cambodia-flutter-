import 'package:developer_cambodia/constants/colors.dart';
import 'package:flutter/material.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "About Course",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("section 1 - Introduction"),
                    Text(
                      "15 min",
                      style: TextStyle(color: AppColor.primaryDarkColor),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Introduction of Blockchain", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  Text("7:00")
                                ],
                              ),
                              IconButton.filledTonal(
                                  onPressed: (){},
                                  icon: Icon(Icons.play_arrow)
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Introduction of Blockchain", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  Text("7:00")
                                ],
                              ),
                              IconButton.filledTonal(
                                  onPressed: (){},
                                  icon: Icon(Icons.play_arrow)
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "About Course",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("section 1 - Introduction"),
                    Text(
                      "15 min",
                      style: TextStyle(color: AppColor.primaryDarkColor),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Introduction of Blockchain", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  Text("7:00")
                                ],
                              ),
                              IconButton.filledTonal(
                                  onPressed: (){},
                                  icon: Icon(Icons.play_arrow)
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("1", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Introduction of Blockchain", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                  Text("7:00")
                                ],
                              ),
                              IconButton.filledTonal(
                                  onPressed: (){},
                                  icon: Icon(Icons.play_arrow)
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
