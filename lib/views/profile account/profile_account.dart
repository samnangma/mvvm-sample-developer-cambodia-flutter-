
import 'package:developer_cambodia/views/archivement/archievement_page.dart';
import 'package:developer_cambodia/views/mycourse_certificate/course_certificate.dart';
import 'package:developer_cambodia/views/profile%20account/change_language.dart';
import 'package:developer_cambodia/views/profile%20account/setting.dart';
import 'package:developer_cambodia/views/profile%20account/udpate_profile.dart';
import 'package:flutter/material.dart';


class ProfileAccount extends StatefulWidget {
  const ProfileAccount({super.key});

  @override
  State<ProfileAccount> createState() => _ProfileAccountState();
}

class _ProfileAccountState extends State<ProfileAccount>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 1100,
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
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 100),
                                    child: Column(
                                      children: [
                                        Text("Seang D. Sifu", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                                        SizedBox(height: 5,),
                                        Text("seang.sengleap@gmail.com",style: TextStyle(fontSize: 16, color: Colors.grey)),
                                        SizedBox(height: 5,),
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(color: Colors.grey, fontSize: 30),
                                            children: <TextSpan>[
                                              TextSpan(text: 'bio: '),
                                              TextSpan(text: 'i’m alive inside the death body..')
                                            ],
                                          ),
                                          textScaleFactor: 0.5,
                                        ),
                                        const SizedBox(height: 5,),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            RichText(
                                              text: const TextSpan(
                                                style: TextStyle(color: Colors.grey, fontSize: 30),
                                                children: <TextSpan>[
                                                  TextSpan(text: 'level: '),
                                                  TextSpan(text: 'pro')
                                                ],
                                              ),
                                              textScaleFactor: 0.5,
                                            ),
                                            const SizedBox(width: 10,),
                                            const Icon(Icons.account_box)
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    thickness: 1, // thickness of the line
                                    indent: 20, // empty space to the leading edge of divider.
                                    endIndent: 20, // empty space to the trailing edge of the divider.
                                    color: Colors.black12, // The color to use when painting the line.
                                    height: 50, // The divider's height extent.
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(Icons.key),
                                                    TextButton(
                                                        onPressed: (){
                                                          showDialog(
                                                              context: context,
                                                              builder: (BuildContext context) => AlertDialog(
                                                                actions: <Widget>[
                                                                  TextButton(
                                                                      child: const Text("ចាកចេញ", style: TextStyle(color: Colors.red),),
                                                                      onPressed: () {
                                                                        Navigator.pop(context);
                                                                      })
                                                                ],
                                                                title: const Center(child: Text('ក្លាយជាគ្រូបង្រៀន')),
                                                                content: const Text('ការសុំទោសចំពោះវេទិការបស់យើងត្រូវធ្វើបច្ចុប្បន្នភាពក្នុងពេលឆាប់ៗនេះលើមុខងារនេះនៅលើកម្មវិធីទូរស័ព្ទ។'),
                                                              )
                                                          );
                                                        },
                                                        child: const Text("ក្លាយជាគ្រូបង្រៀន", style: TextStyle(fontSize: 16, color: Colors.grey),))

                                                  ],
                                                ),
                                                Icon(Icons.arrow_forward_ios)
                                              ],
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangeLanguage()));
                                              },
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 10,),
                                                      Text("ប្ដូរភាសា", style: TextStyle(fontSize: 16, color: Colors.grey),)
                                                    ],
                                                  ),
                                                  const Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => CourseCertificate()));
                                              },
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      TextButton(
                                                          onPressed: (){
                                                            Navigator.push(context, MaterialPageRoute(builder: (context) => CourseCertificate()));
                                                          },
                                                          child: Text("វគ្គសិក្សា", style: TextStyle(fontSize: 16, color: Colors.grey))
                                                      )
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          thickness: 1, // thickness of the line
                                          indent: 10, // empty space to the leading edge of divider.
                                          endIndent: 10, // empty space to the trailing edge of the divider.
                                          color: Colors.black12, // The color to use when painting the line.
                                          height: 50, // The divider's height extent.
                                        ),
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: (){
                                                // Navigator.push(context, MaterialPageRoute(builder: (context) => CourseCertificate()));
                                              },
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 10,),
                                                      Text("គោលការណ៍ភាពឯកជន", style: TextStyle(fontSize: 16, color: Colors.grey))
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(Icons.key),
                                                    TextButton(
                                                        onPressed: (){
                                                          showModalBottomSheet(
                                                              context: context,
                                                              builder: (context) {
                                                                return Column(
                                                                  mainAxisSize: MainAxisSize.min,
                                                                  children: <Widget>[
                                                                    ListTile(
                                                                      leading: Icon(Icons.photo),
                                                                      title: Text('Photo'),
                                                                      onTap: () {
                                                                        Navigator.pop(context);
                                                                      },
                                                                    ),
                                                                    ListTile(
                                                                      leading: Icon(Icons.music_note),
                                                                      title: Text('Music'),
                                                                      onTap: () {
                                                                        Navigator.pop(context);
                                                                      },
                                                                    ),
                                                                    ListTile(
                                                                      leading: Icon(Icons.videocam),
                                                                      title: Text('Video'),
                                                                      onTap: () {
                                                                        Navigator.pop(context);
                                                                      },
                                                                    ),
                                                                    ListTile(
                                                                      leading: Icon(Icons.share),
                                                                      title: Text('Share'),
                                                                      onTap: () {
                                                                        Navigator.pop(context);
                                                                      },
                                                                    ),
                                                                  ],
                                                                );
                                                              });
                                                        },
                                                        child: const Text("ចែករំលែកទៅកាន់មិត្តភក្ដិ", style: TextStyle(fontSize: 16, color: Colors.grey)))
                                                  ],
                                                ),
                                                const Icon(Icons.arrow_forward_ios)
                                              ],
                                            ),
                                            const SizedBox(height: 10,),
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ArchivementPage()));
                                              },
                                              child: const Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 10,),
                                                      Text("សមិទ្ធិផល", style: TextStyle(fontSize: 16, color: Colors.grey))
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          thickness: 1, // thickness of the line
                                          indent: 10, // empty space to the leading edge of divider.
                                          endIndent: 10, // empty space to the trailing edge of the divider.
                                          color: Colors.black12, // The color to use when painting the line.
                                          height: 50, // The divider's height extent.
                                        ),
                                        Column(
                                          children: [
                                            GestureDetector(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingPage()));
                                              },
                                              child: const Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 10,),
                                                      Text("ការកំណត់", style: TextStyle(fontSize: 16, color: Colors.grey))
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 20,),
                                            GestureDetector(
                                              onTap: (){
                                                // Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingPage()));
                                              },
                                              child: const Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 10,),
                                                      Text("អំពីពួកយើង", style: TextStyle(fontSize: 16, color: Colors.grey))
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    const Icon(Icons.key),
                                                    TextButton(
                                                        onPressed: (){
                                                          showDialog(
                                                              context: context,
                                                              builder: (BuildContext context) => AlertDialog(
                                                                actions: <Widget>[
                                                                  TextButton(
                                                                      onPressed: () {
                                                                        Navigator.pop(context);
                                                                      },
                                                                      child: const Text('No',style: TextStyle(fontSize: 20))),
                                                                  TextButton(
                                                                    onPressed: () {
                                                                      //close Dialog//action code for "Yes" button
                                                                    },
                                                                    child: const Text('Yes', style: TextStyle(color: Colors.red, fontSize: 20),),
                                                                  )
                                                                ],
                                                                title: const Center(child: Text('ចាកចេញ')),
                                                                content: const Text('តើអ្នកចង់ចេញពីគណនីរបស់អ្នកទេ?'),
                                                              )
                                                          );
                                                        },
                                                        child: const Text("លុបគណនី",style: TextStyle(fontSize: 16, color: Colors.grey),)
                                                    )
                                                  ],
                                                ),
                                                const Icon(Icons.arrow_forward_ios)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
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
                                        foregroundImage: AssetImage("assets/images/bros_srat.jpg"),
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
                                            onPressed: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => const UpdateProfile()));
                                            },
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
                )
              ],
            ),
          ],
        ),
      )

    );

  }
}
