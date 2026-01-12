import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

// listView  24. dersteki pageView gibi çalışır ama sola değil aşağı doğru akar.
class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: // BirinciDers(), // ilk önce birinci dersi çalıtır.
            // IkinciDers()
            ListView(padding: EdgeInsets.zero, children: [
          FittedBox(
            child: Text('Merhaba',
                maxLines: 2, style: Theme.of(context).textTheme.displayLarge),
          ),
          Container(
            height: 300,
            color: Colors.green,
          ),
          Divider(), // araya bir çizgi atar

          // ListView içine ListView Atıp yatayda kayar yapacağız
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection:
                  Axis.horizontal, //bu listview yatayda kayar oldu.
              children: [
                Container(width: 300, color: Colors.yellow),
                Container(width: 300, color: Colors.blue),
                Container(width: 300, color: Colors.red)
              ],
            ),
          ),
          FittedBox(
            child: Text('Merhaba',
                maxLines: 2, style: Theme.of(context).textTheme.displayLarge),
          ),
          Container(
            height: 300,
            color: Colors.green,
          ),
          Divider(), // araya bir çizgi atar

          // ListView içine ListView Atıp yatayda kayar yapacağız
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection:
                  Axis.horizontal, //bu listview yatayda kayar oldu.
              children: [
                Container(width: 300, color: Colors.yellow),
                Container(width: 300, color: Colors.blue),
                Container(width: 300, color: Colors.red)
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.clear)),

          const _ListDemo() //
        ])
        );
  }
}

//---------------------------

class _ListDemo extends StatefulWidget {
  const _ListDemo({super.key});

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  //ÖNEMLİ : ListView içinde kullandığımız  bu widget sayfamız   ekran dışında yer alıyorsa ve ekran aşağıya
  //kaydırıldığında  görüntüleniyorsa  ; sayfa ilk görüldğü anda initState sayfa yukarı kaydırılıp çıktığında ise
  //sayfadan çıkılıdığını anlayıp disponse çalışır.
  @override
  void initState() {
    super.initState();
    print('initstate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

//-----------------------

class BirinciDers extends StatelessWidget {
  const BirinciDers({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      FittedBox(
        // FittedBox iki konpanent birbirini kapsıyorsa alttakini üstekinin içine sığdırır.

        child: Text('Merhaba',
            maxLines: 2, style: Theme.of(context).textTheme.displayLarge),
      ),
      Container(
        height: 300,
        color: Colors.green,
      ),
      Divider(), // araya bir çizgi atar
      Container(
        height: 300,
        color: Colors.yellow,
      ),
      IconButton(onPressed: () {}, icon: Icon(Icons.clear))
    ]);
  }
}

//-------------------------------
class IkinciDers extends StatelessWidget {
  const IkinciDers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // ekranı ikiye bölüp üstteki ekranı sabit alttaki ekranı  kayar ekran listview yaptık
      children: [
        Spacer(), //spacer  ve expanded ile ekranı yarı yarıya böleriz (18. dersi incele )
        Expanded(
          child: ListView(children: [
            FittedBox(
              // FittedBox iki konpanent birbirini kapsıyorsa alttakini üstekinin içine sığdırır.

              child: Text('Merhaba',
                  maxLines: 2, style: Theme.of(context).textTheme.displayLarge),
            ),
            Container(
              height: 300,
              color: Colors.green,
            ),
            Divider(),
            Container(
              height: 300,
              color: Colors.yellow,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.clear))
          ]),
        ),
      ],
    );
  }
}

//SONUÇ ListView kullandığımızda dataların hepsini çekip  o anda göstermeye çalışır.bu çok doru bir yöntem 
//değil . Buyüzden 28 . dersterki ListView Builder kullanmak daha mantıklı
