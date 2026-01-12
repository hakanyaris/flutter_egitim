import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: ders1()

        //ders2();

        );
  }

  Card ders1() {
    return Card(
      child: const ListTile(
        title: Text('Başlık adsaasafdfasdasda'),
        textColor: Colors.blue,
      ),
      
    );
  }

  Padding ders2() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Card(
          //ListTile i daha güzel görünmesi için card ile sarmaladık

          child: ListTile(
            // ek bilgi   ExpansionTile de List tile gibidir farkı ise listenin her bir elemanına (satırına) açılır menü ekler altına öğeler ekleriz childiren[]

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    30)), //listenin kenarlarına yuvarlaklık verir.
            style: ListTileStyle.drawer, //BAŞLIK KALINLIĞI
            title: Text('My Card'),
            subtitle: Text('How do you use your card'),
            leading:
                Icon(Icons.money_off_csred_outlined), //en soldaki companent
            trailing: Icon(Icons.arrow_right), //en sağdaki companent
            onTap: () {}, // bu listeye  kısa tıklanınca ne olacağı
            onLongPress: () {}, // bu listeye  uzun tıklanınca ne olacağı
            enabled:
                true, // tıklamaları kapatır veya açar.false olursa tıklama kapanır.

            iconColor: Colors.red,
            textColor: Colors.black,
            tileColor: Colors.amber, //döşeme (arkaplan) rengi
            //-------
            // selected:
            //     true, //selected true olursa aşağıdaki renkler geçerli olacak.statefull widget içinde bir koşula bağlıyarak tıklanıınca bunu tre veya false yapabiliriz.
            // selectedTileColor:
            //     Colors.blue, //seçilince  döşeme rengi bu olsun
            // selectedColor: Colors.white, //yazı rengi
            contentPadding: EdgeInsets.all(
                5), //içerideki comapanentlerin sol sağ üst ve alt arasındaki boşluğu
            // horizontalTitleGap:
            //     100, // başlığın sağında ve solundaki boşluk  içeridenki  companentlerin kenarlara uzaklıkları
            // minLeadingWidth: 50, //title ile sol icon aradındaki boşluk
            minVerticalPadding: 20, //üst ve alttan title başlığa uzaklığı

            hoverColor: Colors
                .blue, //windowsta ve webde  fare ile üzerine gelince bu renge döner
            focusColor: Colors
                .cyanAccent, //windowsta VE WEBDE listeyi tıklayınca bu rEnk olur
            mouseCursor: SystemMouseCursors
                .alias, //mause ile üzerinde geldiğinde fare imleci şeklini belirleriz
          ),
        ),

        //--------------------------

        Card(
          child: ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            title: Image.network(
              "https://picsum.photos/200/300",
              height: 70,
              width: 100,
              alignment: Alignment.centerLeft,
            ),
            dense: true, // listtile kompanentini sıkıştırmayı sağlıyor
            leading: Container(
                height: 100,
                width: 40,
                //color: Colors.red,
                child: Icon(Icons.access_time_outlined),
                alignment: Alignment.bottomCenter),
            subtitle: Text('bu kompanentin yeri burası'),
            trailing: Icon(Icons.accessible_forward),
          ),
        ),

        //-------

        Card(
          child: ListTile(
            title:
                RandomImage(), //Projemizin Core kkssörünün içindeki RandomImage  classını çalıştırdık
            dense: true, // listtile kompanentini sıkıştırmayı sağlıyor
            leading: Container(
                height: 100,
                width: 40,
                //color: Colors.red,
                child: Icon(Icons.access_time_outlined),
                alignment: Alignment.bottomCenter),
            subtitle: Text('bu komanentin yeri burası'),
            trailing: Icon(Icons.accessible_forward),
          ),
        )
      ]),
    );
  }
}
