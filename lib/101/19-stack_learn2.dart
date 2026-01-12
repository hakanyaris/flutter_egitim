import 'package:flutter/material.dart';

class StackLearn2 extends StatelessWidget {
  const StackLearn2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Stack(children: [
          // Container(
          //   height: 100,
          //   color: Colors.blue,
          // ),
          Positioned(
              top: 50,
              //height: 50,
              left: 50,
              right: 100,
              bottom: 50,

              //  bottom: 100,
              child: Container(
                color: Colors.amber,
              ))
        ]));
  }
}
