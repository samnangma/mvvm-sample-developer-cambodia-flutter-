
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';


class DoingProject extends StatelessWidget {
  const DoingProject({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("មេរៀន", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          centerTitle: true,

          bottom: const TabBar(
              indicatorColor: Colors.yellow,
              labelColor: Colors.yellow,
              tabs: [
                Tab(
                  text: "ឯកសារ",
                ),
                Tab(
                  text: "link",
                )
              ]
          ),
        ),
        body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: IconButton(
                              onPressed: (){

                              },
                              icon: const Icon(Icons.add, size: 70, color: Colors.grey,)
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CupertinoTextField(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              placeholder: "សរសេរជា link",
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
            ]
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
            child: const Center(child: Text("ធ្វើបច្ចុប្បន្នភាព", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
            ),)),
          ),
        ),
      ),
    );
  }
}
