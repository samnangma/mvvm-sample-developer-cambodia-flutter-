import 'package:flutter/material.dart';


class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(Icons.access_time),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("ការទទួលបាន សញ្ញាបត្តិ", style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("1 ម៉ោងមុន")
                  ],
                ),
                SizedBox(height: 10,),
                Text("អបអរសាទរវិញ្ញាបនបត្ររបស់អ្នកឥឡូវអាចទាញយកបានហើយសូមចូលទៅកាន់វេទិការបស់យើងដើម្បីចូលប្រើ និងទាញយកវិញ្ញាបនបត្ររបស់អ្នក។")
              ],
            ),
          )
        ],
      ),
    );
  }
}
