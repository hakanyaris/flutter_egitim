import 'package:flutter/material.dart';

class CircleAvatar1 extends StatelessWidget {
  CircleAvatar1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CircleAvatar(
      backgroundImage: AssetImage("images/book_look.jpg"),
    ));
  }
}
