import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      //Stack ile üst üste binebilen companentler ekleyebiliriz.En son eklenen companent en üstte görünür.
      //Stack conapanenti içindeki pozisyonsuz çocukların genişliği kadar büyür.
      body: Stack(
        children: [
          Container(
            color: const Color.fromRGBO(33, 150, 243, 1),
            height:
                100, //bu kutu sarı kutunun altında kalıp görünmez çünkü sarı kutudan küçük ve kod satırında en üstte
          ),
          Container(
            color: Colors.yellow,
            height: 120,
          ),
          Container(
            width: 300,
            height: 150,
            color: Colors.green,
          ),
          Positioned(
              //Positioned  widgeti left :70 dersek kendini saran konpanentten solundan 70 piksel içeri girer.yeteri kadar kordinat girmezsek şekil oluşmaz
              top: 70,
              height: 50,
              left: 10,
              right: 10,
              child: Container(
                color: Colors.black,
              )),
          // Positioned.fill(
          //   bottom: 10,
          //   right: 40,
          //   child: Container(
          //     color: Colors.purpleAccent,
          //   ),
          // )
        ],
      ),
    );
  }
}
