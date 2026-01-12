import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar9.dart';

class Navigator_Learn extends StatefulWidget {
  const Navigator_Learn({super.key});

  @override
  State<Navigator_Learn> createState() => _Navigator_LearnState();
}

class _Navigator_LearnState extends State<Navigator_Learn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return TextField_Learn();
            },
          ));
        },
      ),
    );
  }
}
