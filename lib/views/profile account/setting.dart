
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  late bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Setting",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Icon(Icons.key),
                    SizedBox(
                      width: 20,
                    ),
                    Text("ការកំណត់ការជូនដំណឹង",
                        style: TextStyle(color: Colors.grey, fontSize: 20))
                  ],
                ),
                Switch(
                  activeColor: Colors.blue,
                  value: isChecked,
                  onChanged: (bool value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              ],
            ),
            const Divider(
              thickness: 1, // thickness of the line
              indent: 10, // empty space to the leading edge of divider.
              endIndent: 10, // empty space to the trailing edge of the divider.
              color: Colors.black12, // The color to use when painting the line.
              height: 20, // The divider's height extent.
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.key),
                    SizedBox(
                      width: 20,
                    ),
                    Text("កម្មវិធីគ្រប់គ្រងពាក្យសម្ងាត់",
                        style: TextStyle(color: Colors.grey, fontSize: 20))
                  ],
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            const Divider(
              thickness: 1, // thickness of the line
              indent: 10, // empty space to the leading edge of divider.
              endIndent: 10, // empty space to the trailing edge of the divider.
              color: Colors.black12, // The color to use when painting the line.
              height: 20, // The divider's height extent.
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.key),
                    const SizedBox(
                      width: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                actions: <Widget>[
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('No',
                                          style: TextStyle(fontSize: 20))),
                                  TextButton(
                                    onPressed: () {
                                      //close Dialog//action code for "Yes" button
                                    },
                                    child: const Text(
                                      'Yes',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 20),
                                    ),
                                  )
                                ],
                                title: const Center(
                                    child: Text('Delete Account')),
                                content: const Text(
                                    'តើអ្នកចង់លុបគណនីរបស់អ្នកទេ?'),
                              ));
                        },
                        child: Text("លុបគណនី",
                            style: TextStyle(color: Colors.grey, fontSize: 20)))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

