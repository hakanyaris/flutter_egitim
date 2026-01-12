import 'package:flutter/material.dart';

//3-
class IkinciSayfa extends StatelessWidget {
  //5B-
  String _digerSaydanGelenYazi;
  IkinciSayfa(this._digerSaydanGelenYazi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('İkinci Sayfa'),
          //automaticallyImplyLeading: false, // 4B- otomatik olarak çıkan ana sayfaya dön butonunu kapatır.
        ),
        body: Column(
          children: [
            Text(_digerSaydanGelenYazi),

            //4-Bir Tuşa atama  ile anasayfaya gitme
            // Navigator.pop ile geri tuşu dışında bu buton ile bir önceki(anasayfaya) dönmemizi sağlar
            ElevatedButton(
                onPressed: () {
                  ///////5C- pop kullnımında contex  den sonra virgülden sonra yazılan herşey(int,bool,list ,class v.b)ana sayfaya veri olarak gönderilir
                  Navigator.pop(context, 'ikinci Sayfadan gelen veri',);//Not: sade bu tuşla bu veri gönderilir .appBardaki geri tuşu için bu kod işlevsizdir.
                },
                child: Text('Ana Sayfaya Dön'))
          ],
        ));
  }
}
