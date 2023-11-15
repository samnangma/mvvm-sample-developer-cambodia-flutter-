import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PasswordManager extends StatefulWidget {
  const PasswordManager({super.key});

  @override
  State<PasswordManager> createState() => _PasswordManagerState();
}

class _PasswordManagerState extends State<PasswordManager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Password Manager", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    placeholder: "កូដសម្ងាត់បច្ចុប្បន្ច",
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                  onPressed: (){},
                  child: const Text("Forget password?",
                    style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue,decorationColor: Colors.blue,),
                  )
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    placeholder: "កូដសម្ងាត់ថ្មី",
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: CupertinoTextField(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    placeholder: "បញ្ជាក់កូដសម្ងាត់ថ្មី",
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text("ធ្វើបច្ចុប្បន្នភាព", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),)),
        ),
      ),
    );
  }
}
