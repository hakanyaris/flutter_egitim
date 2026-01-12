import 'package:flutter/material.dart';

class ListGenerateLearn extends StatelessWidget {
  ListGenerateLearn({super.key});
  List userName = [
    {'name': 'hakan', 'age': 39},
    {'name': 'ali', 'age': 40},
    {'name': 'kenan', 'age': 24},
    {'name': 'ilyas', 'age': 23},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        ...List.generate(userName.length, (index) {
          //List.generate  aşağıdaki işlemi userName.lenght(sayısı) kadar tekrarla.
          return Card(child: ListTile(title: Text(userName[index]['name'])));
        })
      ]),
    );
  }
}
