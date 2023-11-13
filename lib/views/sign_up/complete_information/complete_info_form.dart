import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../opt_verfiy/opt_verfiy.dart';

class CompleteInforForm extends StatefulWidget {
  const CompleteInforForm({super.key});

  @override
  State<CompleteInforForm> createState() => _CompleteInforFormState();
}

class _CompleteInforFormState extends State<CompleteInforForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "បំពេញព័ត៏មានរបស់អ្នក",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,color: AppColor.secondaryDarkColor),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            decoration: ShapeDecoration(
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.people_outline),
                hintText: "នាម",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            height: 50,
            decoration: ShapeDecoration(
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.people_outline),
                hintText: "គោត្តនាម",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 15),
          // Container(
          //   height: 50,
          //   decoration: ShapeDecoration(
          //     color: AppColor.gray50,
          //     shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(5)),
          //   ),
          //   child: TextFormField(
          //     decoration: InputDecoration(
          //       prefixIcon: const Icon(Icons.phone),
          //       hintText: "លេខទូរស័ព្ទ",
          //       border: InputBorder.none,
          //     ),
          //   ),
          // ),
          // const SizedBox(
          //   height: 15,
          // ),
          Container(
            height: 50,
            decoration: ShapeDecoration(
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.home_outlined),
                hintText: "អាស័យដ្ឋាន",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Verificatoin()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Set the background color here
                  ),
                ),
                child: const Text(
                  "បន្ត",
                  style: TextStyle(
                      color: AppColor.secondaryDarkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ))
        ],
      ),
    );
  }
}
