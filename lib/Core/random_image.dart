import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  RandomImage({super.key, this.hight = 100});

  final imageUrl = "https://picsum.photos/200/300?grayscale";
  final double hight;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      height: 70,
      fit: BoxFit.cover,
    );
  }
}
