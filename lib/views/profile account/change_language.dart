import 'package:flutter/material.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ប្ដូរភាសា", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Text("កខ", style: TextStyle(color: Colors.yellow, fontSize: 20),),
                SizedBox(width: 10,),
                TextButton(
                    onPressed: (){},
                    child: Text("ភាសាខ្មែរ", style: TextStyle(color: Colors.grey, fontSize: 20))
                )
              ],
            ),
            Row(
              children: [
                Text("Aa", style: TextStyle(color: Colors.yellow, fontSize: 20),),
                SizedBox(width: 10,),
                TextButton(
                    onPressed: (){},
                    child: Text("English", style: TextStyle(color: Colors.grey, fontSize: 20))
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.add, color: Colors.yellow,),
                SizedBox(width: 10,),
                TextButton(
                    onPressed: (){},
                    child: Text("បន្ថែមភាសា", style: TextStyle(color: Colors.grey, fontSize: 20))
                )
              ],
            ),
          ],
        ),
      ),
    ); 
  }
}
