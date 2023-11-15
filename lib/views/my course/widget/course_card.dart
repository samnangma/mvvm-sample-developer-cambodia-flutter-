import 'package:flutter/material.dart';


class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(color: Colors.blueAccent)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Image.asset("assets/images/1.jpg", height: 100, fit: BoxFit.cover,)
            ),
            const SizedBox(width: 10,),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3),
                        child: Text("លក់ដាច់ជាងគេ"),
                      )
                  ),
                  SizedBox(height: 5,),
                  Text("បច្ចេកវិទ្យាគួរឱ្យកត់សម្គាល់", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

                  Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(width: 15,),
                      Text("Jonh Doe")
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20),
                        width: 200,
                        height: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.5,
                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
                            backgroundColor: Color(0xffD6D6D6),
                          ),
                        ),
                      ),
                      Text("20/25")
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}