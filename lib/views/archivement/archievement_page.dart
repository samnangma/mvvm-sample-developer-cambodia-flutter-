
import 'package:developer_cambodia/views/archivement/widget/card_archivement.dart';
import 'package:flutter/material.dart';


class ArchivementPage extends StatefulWidget {
  const ArchivementPage({super.key});

  @override
  State<ArchivementPage> createState() => _ArchivementPageState();
}

class _ArchivementPageState extends State<ArchivementPage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("សមិទ្ធិផល", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  child: ListView.builder(
                    itemCount: 14,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 14.0),
                        child: ArchivementCard(),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        )

    );

  }
}

