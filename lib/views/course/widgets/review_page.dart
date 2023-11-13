import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

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
                    child: Text("About Course", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello vicky"),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        SizedBox(width: 10,),
                        Row(
                          children: [
                            Text("1"),
                            Text("day ago")
                          ],
                        )
                      ],
                    ),
                    Text("វាជាវគ្គសិក្សាដ៏អស្ចារ្យ!!! Tutor ពន្យល់ពី subject ដ៏ស្មុគ្រស្មាញនៃ crytocurrency world ដល់មនុស្សជាមធ្យមយ៉ាងសាមញ្ញ និងកម្សាន្ត។ Course នេះគឺជាត្រួសត្រាយផ្លូវ នូវអ្វីដែលជា cryptocurrency និងremoves all complexities. If you want to learn, go for it!")
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello vicky"),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        SizedBox(width: 10,),
                        Row(
                          children: [
                            Text("1"),
                            Text("day ago")
                          ],
                        )
                      ],
                    ),
                    Text("វាជាវគ្គសិក្សាដ៏អស្ចារ្យ!!! Tutor ពន្យល់ពី subject ដ៏ស្មុគ្រស្មាញនៃ crytocurrency world ដល់មនុស្សជាមធ្យមយ៉ាងសាមញ្ញ និងកម្សាន្ត។ Course នេះគឺជាត្រួសត្រាយផ្លូវ នូវអ្វីដែលជា cryptocurrency និងremoves all complexities. If you want to learn, go for it!")
                  ],
                ),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello vicky"),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        Icon(Icons.star, color: Colors.yellow,),
                        SizedBox(width: 10,),
                        Row(
                          children: [
                            Text("1"),
                            Text("day ago")
                          ],
                        )
                      ],
                    ),
                    Text("វាជាវគ្គសិក្សាដ៏អស្ចារ្យ!!! Tutor ពន្យល់ពី subject ដ៏ស្មុគ្រស្មាញនៃ crytocurrency world ដល់មនុស្សជាមធ្យមយ៉ាងសាមញ្ញ និងកម្សាន្ត។ Course នេះគឺជាត្រួសត្រាយផ្លូវ នូវអ្វីដែលជា cryptocurrency និងremoves all complexities. If you want to learn, go for it!")
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
