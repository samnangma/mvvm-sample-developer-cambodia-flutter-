import 'package:flutter/material.dart';


class ArchivementCard extends StatelessWidget {
  const ArchivementCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(10)
            ),
            child: const Icon(Icons.mediation, size: 40,),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bronze Forum Enthusiast", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text("Win the challenge")
              ],
            ),
          )
        ],
      ),
    );
  }
}