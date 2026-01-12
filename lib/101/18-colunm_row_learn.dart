import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: // BirinciDers() //birinci dersi ilk önce kontorol et.
            UcuncuDers());
  }
}

class BirinciDers extends StatelessWidget {
  const BirinciDers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        // expanded sadece column ve row da kullanılır. ekranı oranlo olarak böler.eğer flex vermezsek.default
        flex: 4, // ekran üzerinde yüzde 40 alan kaplar
        child: Row(
          children: [
            Expanded(flex: 4, child: Container(color: Colors.red)),
            Expanded(flex: 2, child: Container(color: Colors.black)),
            Expanded(flex: 2, child: Container(color: Colors.green)),
            Expanded(flex: 2, child: Container(color: Colors.blue)),
          ],
        ),
      ),
      Expanded(
        flex: 2, // ekran üzerinde yüzde 20 alan kaplar
        child: Container(color: Colors.green),
      ),
      Expanded(
        flex: 2,
        child: Container(color: Colors.blue),
      ),
      Expanded(
        flex: 2,
        child: Container(color: Colors.yellow),
      )
    ]);
  }
}
//---------------------------------------------------------------------------------
//--------------------------------------------------------------------------------

class IkinciDers2 extends StatelessWidget {
  const IkinciDers2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        // expanded sadece column ve row da kullanılır. ekranı oranlo olarak böler.eğer flex vermezsek.default
        flex: 4, // ekran üzerinde yüzde 40 alan kaplar
        child: Row(
          children: [
            Expanded(flex: 4, child: Container(color: Colors.red)),
            Expanded(flex: 2, child: Container(color: Colors.black)),
            Expanded(flex: 2, child: Container(color: Colors.green)),
            Expanded(flex: 2, child: Container(color: Colors.blue)),
          ],
        ),
      ),
      Spacer(
          flex: 2), //ekranımızda yüzde 20 lik bir boş alan oluşrurur spacer()
      Expanded(
        flex: 2,
        child: Row(

            //mainAxisAlignment yani içindeki companentleri  oranlı olarak yatyda  dağıtma biçimi
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //start(başta topla hepsini), end(sonda topla )// .spaceBetween  .spaceAround .spaceEvenly .center

            //crossAxisAlignment dikeyde  row un (satırın ) en üste mi ortaya mı alta mı  gösterileceğini ayarlar.
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize
                .max, // mainAxisSize default değeri .max dır ama .min yazarsak   içindeki kompanentler kadar yer kaplar daralır.
            children: [
              Text(
                'a',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text('b'),
              Text('c'),
            ]),
      ),
      Expanded(
        flex: 2,
        child: Container(color: Colors.yellow),
      ),

      //-----------------------
      SizedBox(
          height:
              100, //expandedlerin dışında yazdığımız her kutu veya container
          //cizildikten sonra geriye kalan kısım expandedler tarafından paylaşılır.
          child: Column(
            children: [
              Expanded(child: Text('data')),
              Expanded(child: Text('data')),
              Expanded(child: Text('data')),
              Expanded(child: Text('data')),
            ],
          ))
    ]);
  }
}

//---------------------------------------------------------------------------------
//--------------------------------------------------------------------------------
// double.infinity genişlik veya yüksekliğe hangisine eklenirse sonsuz uzatır.

class UcuncuDers extends StatelessWidget {
  const UcuncuDers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //////////////// double.infinity kareyi sonsuzda uzat.(columa koyarsak with ekleyebiliriz , rowa koyarsak height ekleyebiliriz.)
        Container(width: 50, height: 50, color: Colors.amber),
        Container(width: double.infinity, height: 50, color: Colors.blue),
      ],
    );
  }
}
