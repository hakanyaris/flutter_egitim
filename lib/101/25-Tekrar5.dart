import 'package:flutter/material.dart';

//1- butona basınca buton rengi değişen uygulama
//2- resme tıklanınca diğer resme geçen uygulama
class Tekrar5 extends StatefulWidget {
  const Tekrar5({super.key});

  @override
  State<Tekrar5> createState() => _Tekrar5State();
}

class _Tekrar5State extends State<Tekrar5> {
  void onPressed() {
    setState(() {
      ColorItem.colorElavatedButton = Colors.blue;
    });
  }

  void onPressed2() {
    setState(() {
      //4 tane resim olduğu için 4 den sonra başa sarıyoruz.
      if (ImageNumber.threeNumber == 4) {
        ImageNumber.threeNumber = 0;
      }
      ImageNumber.threeNumber += 1;
      print(ImageNumber.threeNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorItem.colorElavatedButton),
              onPressed: () {
                onPressed();
              },
              child: Text(
                'Giriş',
                style: Theme.of(context).textTheme.headlineSmall,
              )),
          SizedBox(
              height: 200,
              width: 200,
              child: FloatingActionButton(
                splashColor: Colors.white,
                onPressed: () {
                  setState(() {
                    onPressed2();
                  });
                },
                child: Image.asset(
                  'images/three/tree_${ImageNumber.threeNumber}.png',
                  fit: BoxFit.fill,
                ),
              ))
        ]));
  }
}

class ColorItem {
  static Color colorElavatedButton = Colors.amber;
}

class LanguageItems {
  static String asd = 'asd';
}

class ImageNumber {
  static int threeNumber = 1;
}

class functionUtility {}
