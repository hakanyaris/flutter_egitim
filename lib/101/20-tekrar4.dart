import 'dart:math';

import 'package:flutter/material.dart';

class Tekrar4 extends StatelessWidget {
  const Tekrar4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 90, 40),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 100,
                color: Color.fromARGB(255, 37, 90, 40),
              ),
              Positioned(
                  right: 20,
                  bottom: 0,
                  child: SizedBox(
                      height: 110,
                      width: 100,
                      child: Image.asset(
                        'images/kisspng-watercolor-painting-illustration-apple-and-books.png',
                        fit: BoxFit.fill,
                      )))
            ],
          ),
          Expanded(
              flex: 1,
              child: Container(
                color: Color.fromARGB(255, 37, 90, 40),
              )),
          Expanded(
              flex: 8,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
              )),
        ],
      ),
    );
  }
}
