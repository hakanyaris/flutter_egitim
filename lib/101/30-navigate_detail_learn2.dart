// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

//29-navigation_learn3.dart için  yapılmış sayfa
class NavigationDetailLearn2 extends StatefulWidget {
  const NavigationDetailLearn2({
    Key? key,
    this.isOkey = false,
  }) : super(key: key);

  final bool isOkey;

  @override
  State<NavigationDetailLearn2> createState() => _NavigationDetailLearn2State();
}

class _NavigationDetailLearn2State extends State<NavigationDetailLearn2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: ElevatedButton.icon(
          onPressed: () {
            // Onayla butonuna basınca  pop ile geriye(geldiği sayfaya) true döndürü
            Navigator.of(context).pop(!widget.isOkey);
          },
          icon: Icon(Icons.check,
          
          color: widget.isOkey ? Colors.red : Colors.green),
          label: widget.isOkey ? Text('Red') : Text('Onayla'),
        )));
  }
}

//1.30.44 kaldım
