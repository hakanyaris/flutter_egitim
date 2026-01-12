import 'package:flutter/material.dart';

//1-slss yazıp statelesswidget oluşturuyoruz.
//2-StatelessWidget  seçip ampülü tıklayıp  convertToStatefullWidget tıklayınca yeni bir class oluşur.Bu Statefull widgettir.
class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});
//bu class statelesswidget widget gibi çalışır
  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  //3-statefull widget güncellenmesi ve değişmesi gereken durum ve datalarda
  //kullnılır.fakat bütün sayfaya uygulandığı için her bir güncellemede bütün sayfa etkilenir.ve bu performansı
  //ÖNEMLİ: düşürür.23 derste ise bunun çözmek için sadece datanın değiştirilmesi gereken companente statefull uyguluyoruz.

  int countValue = 0;
  // void incremenet() {
  //   setState(() {
  //     //ÖNEMLİ: setState metodu sayesinde bu metot çalıştığında build metodu(BuildContext context) tekrar tetiklenir
  //     //ve datalar güncellenir.
  //     countValue = countValue + 1;
  //   });
  // }

  // void deIncremenet() {
  //   setState(() {
  //     countValue = countValue - 1;
  //   });
  // }

// bu metot yukarıdakine göre daha kullanışlı
  void _updateCounter(bool isIncremenet) {
    setState(() {
      if (isIncremenet) {
        countValue = countValue + 1;
      } else {
        countValue = countValue - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_incremementButton(), _deincremenetButton()],
      ),
      body: Center(
          child: Text(
        countValue.toString(),
        style: Theme.of(context).textTheme.headlineMedium,
      )),
    );
  }

  FloatingActionButton _incremementButton() {
    return FloatingActionButton(
      onPressed: () {
        //_increment();
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );
  }

  Padding _deincremenetButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
          onPressed: () {
            //_deIncrement();
            _updateCounter(false);
          },
          child: Icon(Icons.remove)),
    );
  }
}
