import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //BİR UYGULAMADA ÜÇ ANA BÖLÜM VARDIR APBAR ,BODY VE BOTTOMNAVİGATİONBAR
      appBar: AppBar(),
      body: Text('Merhaba'),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'A'),
        BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'B'),
      ]),
    
      // uygulamanın diğer farklı özellikleri
      backgroundColor: Colors.redAccent, //arka plan rengi uyguanamanın
      floatingActionButton:
          FloatingActionButton(//Ekranın en altında yuvarlak bir  buton oluşturu
              onPressed: () {
        showModalBottomSheet(
            //yuvarlak butona basınca aşağıdaki containeri açar
            context: context,
            builder: (context) => Container(
                  height: 200,
                ));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerDocked, //floatingActionButton u  en ortaya koyar

      drawer:
          Drawer(), //sol üste appabarın içine 3 çizgili bir açılır menu koyar tıklayınca açılır.
    );
  }
}
