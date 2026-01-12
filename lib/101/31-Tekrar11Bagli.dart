import 'package:flutter/material.dart';

class Tekrar11Bagli extends StatefulWidget {
  const Tekrar11Bagli({super.key});

  @override
  State<Tekrar11Bagli> createState() => _Tekrar11BagliState();
}

class _Tekrar11BagliState extends State<Tekrar11Bagli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop(true);
        },
        child: Text('Geri Dön'),
      ),
    );
  }
}
