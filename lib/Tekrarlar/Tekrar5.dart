import 'package:flutter/material.dart';

class StatefullWdgetLearn2 extends StatefulWidget {
  const StatefullWdgetLearn2({super.key});

  @override
  State<StatefullWdgetLearn2> createState() => _StatefullWdgetLearn2State();
}

class _StatefullWdgetLearn2State extends State<StatefullWdgetLearn2> {
  int sayi = 0;
  @override
  void sayiDegistir(bool deger) {
    setState(() {
      if (deger) {
        sayi++;
      } else
        sayi--;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          '$sayi',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
      floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [_incremementButton(), _decreaseButton()]),
    );
  }

  FloatingActionButton _incremementButton() {
    return FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            sayiDegistir(true);
          },
        ));
  }

  Padding _decreaseButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: IconButton(
        icon: Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 32, 74, 107),
              // fromARGB(255, 99, 56, 107),
              borderRadius: BorderRadius.circular(15)),
          child: Icon(
            Icons.remove,
          ),
        ),
        onPressed: () {
          sayiDegistir(false);
        },
      ),
    );
  }
}
