import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({Key? key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "កំណត់ពាក្យសម្ងាត់របស់អ្នកឡើងវិញ",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "បញ្ចូលអ៊ីមែលដែលភ្ជាប់ជាមួយគណនីរបស់អ្នកហើយយើងនឹង\nផ្ញើ Link សម្រាប់កំណត់ពាក្យសម្ងាត់ឡើងវិញ",
            // 'Enter the email associated with your account \nand we’ll send a link for reset password ',
            style: TextStyle(
              color: Color(0xFFBFBFBF),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            decoration: ShapeDecoration(
              color: AppColor.gray50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: "អុីម៉ែល",
                border: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      10.0), // Set the background color here
                ),
              ),
              child: const Text(
                "Submit",
                style: TextStyle(
                  color: AppColor.blackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}