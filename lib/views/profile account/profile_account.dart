// import 'package:flutter/material.dart';
//
// class ProfileAccount extends StatelessWidget {
//   const ProfileAccount({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             toolbarHeight: 80,
//             bottom: PreferredSize(
//               preferredSize: const Size.fromHeight(20),
//               child: Container(
//                 width: double.maxFinite,
//                 padding: const EdgeInsets.only(top: 5, bottom: 10),
//                 decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20)
//                     )
//                 ),
//                 child: const Center(
//                     child: CircleAvatar(
//                       radius: 90,
//                       child: CircleAvatar(
//                         radius: 88,
//                         foregroundImage: AssetImage("assets/images/1.jpg"),
//                       ),
//                     ),
//                 ),
//               ),
//             ),
//             expandedHeight: 400,
//             pinned: true,
//             backgroundColor: Colors.amber,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEbBx4RbXegadSjRovxQlnkQytBX9_Wv6u6mPEaDKGYv82z13fUalqMlXsydkmp53C8rc&usqp=CAU",
//                 width: double.maxFinite,
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           const SliverToBoxAdapter(
//               child: Text(
//                   "hello"
//               )
//           )
//         ],
//       ),
//     );
//   }
// }


import 'package:developer_cambodia/constants/colors.dart';
import 'package:developer_cambodia/constants/fonts.dart';
import 'package:developer_cambodia/views/course/widgets/about_page.dart';
import 'package:developer_cambodia/views/course/widgets/lesson_page.dart';
import 'package:developer_cambodia/views/course/widgets/review_page.dart';
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
                                          SizedBox(height: 5,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                  style: TextStyle(color: Colors.grey, fontSize: 30),
                                                  children: <TextSpan>[
                                                    TextSpan(text: 'level: '),
                                                    TextSpan(text: 'pro')
                                                  ],
                                                ),
                                                textScaleFactor: 0.5,
                                              ),
                                              SizedBox(width: 10,),
                                              Icon(Icons.account_box)
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Divider(
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
                                              SizedBox(height: 10,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 20,),
                                                      Text("ប្ដូរភាសា")
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 20,),
                                                      Text("សញ្ញាប័ត្រ")
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1, // thickness of the line
                                            indent: 10, // empty space to the leading edge of divider.
                                            endIndent: 10, // empty space to the trailing edge of the divider.
                                            color: Colors.black12, // The color to use when painting the line.
                                            height: 50, // The divider's height extent.
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 20,),
                                                      Text("គោលការណ៍ភាពឯកជន")
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 20,),
                                                      Text("ចែករំលែកទៅកាន់មិត្តភក្ដិ")
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 20,),
                                                      Text("សមិទ្ធិផល")
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            thickness: 1, // thickness of the line
                                            indent: 10, // empty space to the leading edge of divider.
                                            endIndent: 10, // empty space to the trailing edge of the divider.
                                            color: Colors.black12, // The color to use when painting the line.
                                            height: 50, // The divider's height extent.
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 20,),
                                                      Text("ការកំណត់")
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(Icons.key),
                                                      SizedBox(width: 20,),
                                                      Text("អំពីពួកយើង")
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
                                                ],
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
                                                            showDialog(
                                                                context: context,
                                                                builder: (BuildContext context) => AlertDialog(
                                                                  actions: <Widget>[
                                                                    TextButton(
                                                                        onPressed: () {
                                                                          Navigator.pop(context);
                                                                        },
                                                                        child: Text('No',style: TextStyle(fontSize: 20))),
                                                                    TextButton(
                                                                      onPressed: () {
                                                                        //close Dialog//action code for "Yes" button
                                                                      },
                                                                      child: Text('Yes', style: TextStyle(color: Colors.red, fontSize: 20),),
                                                                    )
                                                                  ],
                                                                  title: const Center(child: Text('ចាកចេញ')),
                                                                  content: const Text('តើអ្នកចង់ចេញពីគណនីរបស់អ្នកទេ?'),
                                                                )
                                                            );
                                                          },
                                                          child: Text("លុបគណនី",style: TextStyle(fontSize: 16, color: Colors.grey),)
                                                      )
                                                    ],
                                                  ),
                                                  Icon(Icons.arrow_forward_ios)
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

    );
  }
}
