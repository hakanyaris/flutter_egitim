import 'package:flutter/material.dart';

import '18-colunm_row_learn.dart';
import '7-appBar.dart';

class PageViewLearn extends StatefulWidget {
  PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}
//Page View
//PageView widgetı ile ekran üzerinde parmağımızı yukarı aşağı, sağa ve sola hareket ettirerek 
//eklemiş olduğumuz sayfalar arasında geçiş yapabiliriz.
class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(
      viewportFraction:
          1); // sayfayı oranlı alarak büyütür veya küçültür. 0.1 0.5  1.7 yazabiliriz.

  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Row(children: [
          Text(_currentPageIndex.toString()),
          const Spacer(),
          FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    //geri  butonu basınca sayfayı geriletir
                    duration: _DurationUtility._durationLow,
                    curve: Curves.slowMiddle);
              },
              child: Icon(Icons.chevron_left)),
          FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    //ileri butonu basınca sayfayı ileletir
                    duration:
                        _DurationUtility._durationLow, // sayfanın geçis hızı
                    curve: Curves.slowMiddle); // sayfanın geçiş şekli
              },
              child: Icon(Icons.chevron_right))
        ]),
      ),
      appBar: AppBar(),
      ///--------------------------------------------------------------------------------------------------
      body: PageView(
        pageSnapping:
            false, //bu özellik sayfa geçişlerinde fare ile sürüklerken diğer sayfaya geçişte ne kadar sürüklerdek o kadar diğer sayfa açılır
        scrollDirection: Axis.vertical, //sayfaların kayma yönü .
        
        padEnds:
            true, //PageController ile küçülttükten sonra başlangıç ve sonu içeriğe göre kırpma durumu
        controller: _pageController,
        onPageChanged:
            _updatePageIndex, //onPageChanged sayfa numarasını alıp int parametresi alan bir metoda yollar.
        children: [
          Container(color: Colors.green),
          ColumnRowLearn(), //18 dersteki sayfayı göster
          Container(color: Colors.yellow),
          Container(color: Colors.red),
        ],
      ),
    );
  }
}

class _DurationUtility {
  static const _durationLow = Duration(seconds: 1);
}
