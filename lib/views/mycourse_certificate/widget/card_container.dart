import 'package:flutter/material.dart';


class CardContainer extends StatelessWidget {
  const CardContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width:100,
              color: Colors.yellow,
            ),
            const SizedBox(width: 20,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("ចាប់ផ្ដើមជាមួយនឹង Blockchain សម្រាប់ថ្នាក់ដំបូង", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 5,),
                  const Text("CSTAD"),
                  const SizedBox(height: 5,),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(text: 'បញ្ចប់នៅថ្ងៃទី  '),
                        TextSpan(text: '11/11/2023')
                      ],
                    ),
                  ),
                  const SizedBox(height: 5,),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(text: 'Grade:'),
                        TextSpan(text: ' 94%')
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}