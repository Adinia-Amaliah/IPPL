import 'package:flutter/material.dart';
import 'package:ipplproject/Pages/Penjelasan1.dart';
import 'package:ipplproject/Pages/Penjelasan2.dart';

class Materi extends StatelessWidget {
  const Materi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(16.0), 
            child : InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Penjelasan1()));
              },
            
            child: Center(
              child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 132, 255),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Apa sih organ dalam manusia itu?',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            ),),
             ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child : InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Penjelasan2()));
              },
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 132, 255),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Organ dalam pada manusia.',
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),  ),
            ),
            Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 132, 255),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Penyakit yang menjangkit organ dalam.',
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ), ),
            Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 132, 255),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cara menjaga kesehatan organ dalam.',
                    maxLines: 3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ), ),
        ],
      ),
    );
  }
}
