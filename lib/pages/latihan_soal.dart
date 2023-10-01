import 'package:flutter/material.dart';

class latihanSoal extends StatelessWidget {
  const latihanSoal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/latihansoalmateri.jpg',
                  width: 190,
                  height: 190,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Perdalam Pemahaman Mengenai Materi Yang Anda Pelajari',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/tebakgambar.jpg',
                  width: 190,
                  height: 190,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Text(
                    'Tebak Gambar',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
