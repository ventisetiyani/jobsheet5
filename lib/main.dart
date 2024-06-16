import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TeksUtama',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TeksUtama'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TeksUtama(
                teks1: 'Tria Wahyu Apriyanti',
                teks2: 'STI202102438',
              ),
              TeksUtama(
                teks1: 'Riki Nur Alim',
                teks2: 'STI202102440',
              ),
              TeksUtama(
                teks1: 'Venti Setiyani',
                teks2: 'STI202102442',
              ),
              TeksUtama(
                teks1: 'Riyana',
                teks2: 'STI202102468',
              ),
              TeksUtama(
                teks1: 'Apik Maulidah Purnaningsih',
                teks2: 'STI202102475',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    bool isHighlighted = teks1 == 'Venti Setiyani' && teks2 == 'STI202102442';

    return Container(
      width: double.infinity,  // Ensures the container takes full width
      color: isHighlighted ? Colors.green : Colors.transparent,
      padding: EdgeInsets.all(8.0),  // Padding to ensure the text has some space
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // Align text to the left
        children: [
          Text(teks1, style: TextStyle(fontSize: 24)),
          Text(teks2, style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
