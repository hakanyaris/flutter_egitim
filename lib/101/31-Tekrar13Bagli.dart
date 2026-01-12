import 'package:flutter/material.dart';

class Tekrar13Bagli extends StatefulWidget {
  const Tekrar13Bagli({super.key, this.isOkey = false});
  final bool isOkey;

  @override
  State<Tekrar13Bagli> createState() => _Tekrar13BagliState();
}

class _Tekrar13BagliState extends State<Tekrar13Bagli> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {              // listede varsa  false
            Navigator.of(context).pop(!widget.isOkey);
          },
          icon: Icon(
            Icons.check,
            color: widget.isOkey ? Colors.red : Colors.green,
          ),
          label: widget.isOkey ? Text('Red') : Text('Onayla'),
        ),
      ),
    );
  }
}
