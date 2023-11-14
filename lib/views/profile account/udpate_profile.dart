
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          child: Image.asset(
                            "assets/images/2.jpg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200,
                          ),
                        ),
                        Positioned(
                            top: 200,
                            right: 20,
                            child: IconButton.filledTonal(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.black,
                                )
                            )
                        ),
                        Stack(
                          children: [
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
                                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: CupertinoTextField(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 10),
                                              placeholder: "នាម",
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[100],
                                                  borderRadius: BorderRadius.circular(10)),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: CupertinoTextField(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 10),
                                              placeholder: "លេខទូរស័ព្ទ",
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[100],
                                                  borderRadius: BorderRadius.circular(10)),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: CupertinoTextField(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 10),
                                              placeholder: "អាស័យដ្ឋាន",
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[100],
                                                  borderRadius: BorderRadius.circular(10)),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: CupertinoTextField(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 10),
                                              placeholder: "ថ្ងៃ ខែ ឆ្នាំកំណើត",
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[100],
                                                  borderRadius: BorderRadius.circular(10)),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: CupertinoTextField(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 20, horizontal: 10),
                                              placeholder: "ភេទ",
                                              decoration: BoxDecoration(
                                                  color: Colors.grey[100],
                                                  borderRadius: BorderRadius.circular(10)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 180,
                                left: 100,
                                child:  Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Stack(
                                    children: [
                                      const CircleAvatar(
                                        radius: 90,
                                        child: CircleAvatar(
                                          radius: 88,
                                          foregroundImage: AssetImage("assets/images/1.jpg"),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey[100],
                                              borderRadius: const BorderRadius.all(
                                                  Radius.circular(50))),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.camera_alt,
                                                color: Colors.black,
                                              )),
                                        ),
                                      ),

                                    ],
                                  ),
                                )
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text("ធ្វើបច្ចុប្បន្នភាព", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
          ),)),
        ),
      ),

    );
  }
}
