import 'package:flutter/material.dart';

// import '../../model/restaurant_model.dart';

class PopularCourse extends StatelessWidget {
  const PopularCourse({super.key});

  // DataRestaurant? restaurantData;

  @override
  Widget build(BuildContext context) {
    // String? imageUrl;
    //
    // if (restaurantData != null &&
    //     restaurantData!.attributes != null &&
    //     restaurantData!.attributes!.picture != null &&
    //     restaurantData!.attributes!.picture!.data != null &&
    //     restaurantData!.attributes!.picture!.data!.attributes != null) {
    //   imageUrl = "https://cms.istad.co${restaurantData!.attributes!.picture!.data!.attributes!.url.toString()}";
    // } else {
    //   imageUrl = "https://cdn.vectorstock.com/i/preview-1x/65/30/default-image-icon-missing-picture-page-vector-40546530.jpg";
    // }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  "assets/images/13.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //sth above the image
          ],
        ),
        Padding(
          padding:const EdgeInsets.only(top: 10.0, left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Learn Blockchain for beginner",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Kit Dara',
              ),
              Text(
                "\ delivery free",
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}