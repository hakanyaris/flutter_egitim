import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ListView.builder ile listenin devamı aynı anda  çağrılmaz ekran aşağıya kaydırıldıkça listenin devamı çağrılır
      //ve bu şekilde daha performanslı bir kullanım söz konusu olur.

      // ListView.builder geriye widget döndüren bir fonksiyon almak zorundadır ve contex ve index adında iki parametre alır.

      body: //BirinciDers(),

          IkinciDers()
          //DorduncuDers(),
    );
  }
}

class BirinciDers extends StatelessWidget {
  const BirinciDers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        print('$index');
        return Column(
            children: [Placeholder(color: Colors.red), Text('$index')]);
      },
    );
  }
}

//İkinci ders

//ListView.separate widgeti   ListView.builder farklı olarak   separatorBuilder ve itemCount zorunlu alır.
//ListView.builder gibi listenin hepsini almaz.Performanslı çalışır.
//separated ayrılmış demek her listenin elemanını separator ile araya ayırıcı bir widget koyabiliriz.
// ayrıca itemCount ile  listenin  alacağı eleman sayısını giriyoruz.
class IkinciDers extends StatelessWidget {
  const IkinciDers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          print('$index');

          // burada Imagey i Column ile sarmalarsak listenin hepsini aynı anda alır bunu
          // önlemek için columnı sizedbox ile sarmalarız.
          return SizedBox(
              height: 200,
              child: Column(
                children: [
                  Expanded(child: Image.network('https://picsum.photos/200')),
                  Text('$index')
                ],
              ));

              
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.white,
          );
        },
        itemCount: 15);
  }
}

//Üçüncü Ders  colunm içinde Listview.builder kullanımı

class UcuncuDers extends StatelessWidget {
  const UcuncuDers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
            itemCount: 50,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              print(index);
              return Column(
                children: [Placeholder(color: Colors.red), Text('$index')],
              );
            },
          ),
        )
      ],
    );
  }
}

//iç içe iki Column içinde ListviewBuileder kullanımı
//içerideki column öğesinin içindeki listview.builderi sizedbox ile yüksekliğini sınırlamazsak  hata verir.

class DorduncuDers extends StatelessWidget {
  const DorduncuDers({super.key});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 100, width: 200, color: Colors.blue),
        Column(children: [
          Container(height: 100, width: 200, color: Colors.amber),
          SizedBox(
            height: 450,
            child: ListView.builder(
              itemCount: 50,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                print(index);
                return Column(
                  children: [Placeholder(color: Colors.red), Text('$index')],
                );
              },
            ),
          )
        ]),
      ],
    );
  }
}
//Container(height: 100, width: 200, color: Colors.amber),