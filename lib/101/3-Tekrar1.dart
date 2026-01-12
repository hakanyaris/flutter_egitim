import 'package:flutter/material.dart';

class Tekrar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
              child: Text('Hakan YARIŞ'),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.redAccent),
              padding: EdgeInsets.all(45),
              margin: EdgeInsets.all(100),
            ),
            Container(
              height: 100,
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.amber),
              child: Row(children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  child: Text('Elif YARIŞ'),
                  decoration: BoxDecoration(color: Colors.black),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(20),
                  child: Text('Ali Murtaza YARIŞ'),
                  color: Colors.blue,
                )
              ]),
            ),
          ],
        ));
  }
}
