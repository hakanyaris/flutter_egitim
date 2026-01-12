import 'package:flutter/material.dart';

class ButtonLeaenView extends StatelessWidget {
  const ButtonLeaenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextButton(
            onPressed: () {},
            child: Text('TextButton')), //sadece yazı şeklinde olan button
        TextButton(
            onPressed: null,
            child: Text(
                'null TextButton')), //onPressed e null verirsek buton tıklama özelliği
        //kapanır ve silik görünür bu özellik bütün  butonlara uygulanabilir

        TextButton(
          onPressed: () {},
          child: Text('StyleTextButton', //Theme.of için 1. ders TextLearn a bak
              style: Theme.of(context).textTheme.headlineMedium),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
            //bu MaterialStateProperty araştır .ama burada  butona tıklayınca buttonun arka plan rengi değişmesi için  kullanıldı
            if (states.contains(MaterialState.pressed)) {
              return Colors.green; //butona tıkalyına arka plan rengi yeşil olur
            }
            return Colors.white;
          })),
        ),

        ElevatedButton(
            onPressed: () {},
            child: Text(
                'ElevatedButton')), //arka planda rengi olan ve çerçeveden (border) oluşan buton

        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    //butonun köşelerini yuvarlatır
                    borderRadius: BorderRadius.circular(20))),
            child: const Padding(
              //texte padding vererek butonun sınırlarını yazı ike  kenarlık mesafesini ayarlayabiliriz.
              padding:
                  EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
              child: Text(
                'StyleElevatedButton',
              ),
            )),

          
        IconButton(
            onPressed: () {},
            icon:
                Icon(Icons.access_time_filled)), //iconbuton olarak kullanırız.

        //Bütün butonların icon özelliği vardır
        OutlinedButton.icon(
            // bu şekilde kulanırsak icon ve Labeldeki text aynı anda yan yana gözükür.
            onPressed: () {},
            icon: Icon(Icons.accessibility),
            label: Text('IconButton')),

        FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),

        OutlinedButton(
            style: OutlinedButton.styleFrom(
                //***  ÖNEMLİ HER BUTONUN SİTİLİNİ(STYLE) BU ŞEKİLDE DEĞİŞTİREBİLİRİZ.
                backgroundColor: Colors.deepOrange,
                shape: CircleBorder(), //RoundedRectangleBorder() da gelebilir
                padding: EdgeInsets.all(
                    40)), //burdaki padding butonun kenarlığı ile  buton çerçevesi arasındaki mesafedir.
            onPressed: () {},
            child: Text(
                'OutlinedButton')), //çerçeve(border ) ve yazıdan oluşan buton

        InkWell(
            onTap: () {},
            child: Text(
                'InkWell')), //herhangi bir texti pading ve marginsiz ve çerçevesiz bir buttona çevirebiliriz.
        Container(
          color: Colors.black,
          height: 50, // iki  buton arasına 50 piksel mesafe koymak için yaptık
        )
      ]),
      
    );
  }
}
