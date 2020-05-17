import 'package:flutter/material.dart';

class BuildImages extends StatelessWidget {
  final String image;

  BuildImages(this.image);

  @override
  Widget build(BuildContext context) {
    return Container (
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Image (
        image: AssetImage(image),
      ),
    );
  }
}
