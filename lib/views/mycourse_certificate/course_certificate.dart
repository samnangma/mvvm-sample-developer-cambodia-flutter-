import 'package:developer_cambodia/views/certificate/certificate_page.dart';
import 'package:developer_cambodia/views/mycourse_certificate/widget/card_container.dart';
import 'package:flutter/material.dart';

class CourseCertificate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "វគ្គសិក្សា",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height, // Corrected line
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CertificatePage(),
                            ),
                          );
                        },
                        child: const CardContainer(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}