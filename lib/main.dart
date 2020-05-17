import 'package:flutter/material.dart';

import './buildImages.dart';

void main() => runApp(MultiImages());

class MultiImages extends StatelessWidget {
  final images = const [
    'images/pic1.jpeg',
    'images/pic2.jpeg',
    'images/pic3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.tealAccent[400],
          title: Center(
              child: Text(
              'Multi Image Example',
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
        body: ListView (
          children: [
            Container (
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Image (
                image: AssetImage('images/pic1.jpeg'),
              ),
            ),
            Container (
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Image (
                image: AssetImage('images/pic2.jpeg'),
              ),
            ),
            Container (
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Image (
                image: AssetImage('images/pic3.jpg'),
              ),
            ),
            ...images.map((image) {
              return BuildImages(image);
            }).toList()
          ],
        ),
      ),
    );
  }
}

