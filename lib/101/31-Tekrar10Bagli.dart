import 'package:flutter/material.dart';

class Tekrar10Bagli extends StatefulWidget {
  const Tekrar10Bagli({super.key});

  @override
  State<Tekrar10Bagli> createState() => _Tekrar10BagliState();
}

class _Tekrar10BagliState extends State<Tekrar10Bagli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop(true);
          
        },
        child: Text('Tamam'),
      )),
    );
  }
}
