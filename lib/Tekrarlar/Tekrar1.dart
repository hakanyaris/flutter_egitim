import 'package:flutter/material.dart';

class TextLearnWidget1 extends StatelessWidget {
  const TextLearnWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                Metinler.baslik1,
                style: ProjectStyle.baslikTextStyle,
              ),
              Text(
                Metinler.metin1,
                style: ProjectStyle.metinTextStyle,
                textAlign: TextAlign.justify,
              ),
              Text(
                'Son paragraf',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: 50,
                child: Text(
                  'Sizedbox',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 100),
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.amber,            
                    border: Border(
                        left: BorderSide(color: Colors.blue, width: 3.0),
                        right: BorderSide(color: Colors.black, width: 3.0))),

                //-------------------------------------------------
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(218, 0, 0, 0),
                        offset: Offset(4, 5),
                        blurRadius: 10)
                    //spreadRadius yani gölgenin genişliğini artıtır.
                  ],
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    style: TextStyle(color: Colors.black),
                    'Container',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Metinler {
  static String baslik1 = 'FONT EKLEME';
  static String metin1 =
      '1-) Font İndirmek Öncelikle kullanmak istediğimiz font tipini internet üzerinden bilgisayarımıza indirmemiz gerekiyor. Ben bu aşamada Google Fontlar’ı kullanacağım.';
}

class ProjectStyle {
  static TextStyle baslikTextStyle = TextStyle(
    color: Colors.red,
    fontSize: 40,
    fontFamily: 'RubicBurned',
  );
  static TextStyle metinTextStyle = TextStyle(
    color: Colors.cyan,
    fontSize: 15,
  );
}
