import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
      title: Text('Hoşgeldiniz'),

      leading: IconButton(
        //başlığın solundaki öğeyi leading ile belirleriz.
        onPressed: () {},
        icon: Icon(Icons.chevron_left),
      ),

      leadingWidth:
          20, //AppBarın en soldaki componantin  sol kenara mesafesi.bunu artırırsak  title de kayar

      // centerTitle:true, bu özelliği mainde    ThemeData.dark().copyWith açtık burada açmasak da olur
      //centerTitle ile appBardaki öğelerin yerlerini düzenler. Ortalar.

      actionsIconTheme: IconThemeData(
          color: Colors.lightBlue,
          size:
              30), //appbardaki iconların özelliklerini belirleriz  rengini büyüklüğünü

      //actions başlığın sağındaki öğeleri belirler
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.mark_email_read_sharp)),
        Center(
            child: CircularProgressIndicator(
          //servis bekleme işaretidir . dönen yuvarlak ekrana koyar
          color: Colors.blueGrey,
        ))
      ],
      automaticallyImplyLeading:
          false, // normalde  appbardaki solda back ok tuşu otomatik gelir.automaticallyImplyLeading false yaparsak  otomatik gelmez

      // backgroundColor: Colors.transparent,   bu özelliği mainde    ThemeData.dark().copyWith açtık burada açmasak da olur.
      // appbarın arka plan rengini transparan yaptık

      //elevation:0,    bu özelliği mainde    ThemeData.dark().copyWith açtık burada açmasak da olur
      //  elevation conpanentlerin z ekseninde yüksekliğini ayarlar. 0  zemine en yakın olandır.

      //systemOverlayStyle: SystemUiOverlayStyle.light,  bu özelliği mainde    ThemeData.dark().copyWith açtık burada açmasak da olur
      //en yukarıdaki pil göstergesi saat v.b. iconların  dolgu rengi.dark
    ));
  }
}
