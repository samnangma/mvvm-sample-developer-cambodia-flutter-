
import 'package:flutter/material.dart';

import '../data/itemData.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  List<bool> _expandedList = [];

  @override
  void initState() {
    super.initState();
    // Initialize the expanded state for each item
    _expandedList = List<bool>.filled(itemData.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "About Course",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: double.infinity,
                height: 800,
                child: ListView.builder(
                  itemCount: itemData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExpansionPanelList(
                      animationDuration: const Duration(milliseconds: 400),
                      elevation: 1,
                      expandedHeaderPadding: EdgeInsets.zero,
                      children: [
                        ExpansionPanel(
                          body: Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(15) 
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  shape: BoxShape.circle
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Icon(Icons.play_arrow),
                                              ),
                                            ),
                                          ),
                                          const Expanded(
                                              flex: 6,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text("ណែនាំអំពី Blockchain", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                                Text("7:00")
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex:2,
                                            child: Row(
                                              children: [
                                                RichText(
                                                  text: const TextSpan(
                                                    style: TextStyle(color: Colors.black, fontSize: 25),
                                                    children: <TextSpan>[
                                                      TextSpan(text: '2', ),
                                                      TextSpan(text: 'm',),
                                                      TextSpan(text: ' 5', ),
                                                      TextSpan(text: 's',)
                                                    ],
                                                  ),
                                                  textScaleFactor: 0.5,
                                                )
                                              ],
                                            ),
                                          )

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          headerBuilder:
                              (BuildContext context, bool isExpanded) {
                            return Container(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                itemData[index].headerItem,
                                style: TextStyle(
                                  color: itemData[index].colorsItem,
                                  fontSize: 18,
                                ),
                              ),
                            );
                          },
                          isExpanded: _expandedList[index],
                          canTapOnHeader: true,
                          // tapHeaderToExpand: true
                        ),
                      ],
                      expansionCallback: (int item, bool status) {
                        setState(() {
                          _expandedList[index] = !_expandedList[index];
                        });
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
