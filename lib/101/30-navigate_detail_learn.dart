import 'package:flutter/material.dart';

//29-navigation_learn1.dart ve //29-navigation_learn2.dart için  yapılmış sayfa
class NavigationDetailLearn extends StatefulWidget {
  const NavigationDetailLearn({super.key});

  @override
  State<NavigationDetailLearn> createState() => _NavigationDetailLearnState();
}

class _NavigationDetailLearnState extends State<NavigationDetailLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: ElevatedButton.icon(
          onPressed: () {
            // Onayla butonuna basınca  pop ile geriye(geldiği sayfaya) true döndürü
            Navigator.of(context).pop(true);
          },
          icon: Icon(Icons.check),
          label: Text('Onayla'),
        )));
  }
}

//1.30.44 kaldım
