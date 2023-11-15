import 'package:flutter/material.dart';


class CertificatePage extends StatelessWidget {
  const CertificatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("សញ្ញាប័ត្រ"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Image.asset("assets/images/certificate.png"),
      ),
    );
  }
}
