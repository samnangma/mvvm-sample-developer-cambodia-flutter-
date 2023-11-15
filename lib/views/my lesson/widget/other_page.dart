import 'package:developer_cambodia/views/certificate/certificate_page.dart';
import 'package:developer_cambodia/views/doing%20project/doing_project.dart';
import 'package:flutter/material.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(Icons.book, color: Colors.yellow,),
                  SizedBox(width: 20,),
                  Text("អំពីមេរៀន", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Icon(Icons.book, color: Colors.yellow,),
                  TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CertificatePage()));
                      },
                      child: const Text("សញ្ញាប័ត្រនៃមេរៀន", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),))
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.book, color: Colors.yellow,),
                  SizedBox(width: 20,),
                  Text("ចែករំលែកពីមេរៀននេះ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.book, color: Colors.yellow,),
                  SizedBox(width: 20,),
                  Text("សេចក្ដីជូនដំណឹង", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.book, color: Colors.yellow,),
                  SizedBox(width: 20,),
                  Text("បញ្ចូលក្នុងមេរៀនដែលចូលចិត្ត", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.book, color: Colors.yellow,),
                  SizedBox(width: 10,),
                  TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const DoingProject()));
                    },
                      child: Text("ការធ្វើ project", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),))
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.book, color: Colors.yellow,),
                  SizedBox(width: 20,),
                  Text("ការរាយការណ៍", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
