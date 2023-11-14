import 'package:flutter/material.dart';


class CertificatePage extends StatelessWidget {
  const CertificatePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Image.asset("assets/images/certificate.png"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent)
          ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("ចាប់ផ្ដើមរៀនម្ដងទៀត", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),
            ),
          ),
        ),
      ),
    );
  }
}
