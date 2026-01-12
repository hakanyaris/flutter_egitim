import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/14-image_Learn.dart';
import 'package:flutter_application_1/101/9-color_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

//Tab Controllerin çalışması için TicketPrividerin with edilmesi gerekiyor.
class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController; // tabbar controller ekleyerek

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          extendBody:
              true, //floatingActionButtonLocation ile bottomNavigationBar arasında  oluşan(boşluk) gölgeyi siler arka plan rengi belirir.
         
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked, // butonu ortalar
          floatingActionButton: FloatingActionButton(onPressed: () {
            _tabController.animateTo(0);//btona basınca 0 sayfaya gider yani page1 e gider
          }),

          //-------------------------------------------------------------------------------------------
          appBar: AppBar(
              // appbar ve tabbar ile sayfa geçişlerini yukarıda  olunca  böyleyaparız
              //   bottom: TabBar(
              //     controller: _tabCntroller,//
              //     tabs: [
              // Tab(
              //   text: 'page1',
              // ),
              // Tab(
              //   text: 'page2',
              // )])
              ),
          body: TabBarView(
              physics:
                  NeverScrollableScrollPhysics(), //page1 ile page2 sayfa geçişlerini kaydırarak geçişi kapatır.

              children: [
                Container(color: Colors.amber),
                Container(
                  color: Colors.blue,
                )
              ]), 
              //----------------------------------------------------------------------------------------------------
              bottomNavigationBar: BottomAppBar(
            child:

                // bottomNavigationBar ve tabbar ile sayfa geçişlerini aşağıdan olunca böyle yaparız
                TabBar(
                    // tabbar ayarlarını maindeki material apta Themeden düzenleyebiliriz.
                    padding: EdgeInsets.all(
                        0), // 0 yaparak şığdırmayı ayarlayabilirisz.
                    indicatorColor: Colors.pink,
                    //  isScrollable: true, // bar menüdeki başlıkları şıkıştırır
                    labelColor: Colors.red, // tabbardaki yazı rengi
                    unselectedLabelColor:
                        Colors.indigo, // şeçili olmayan yazı rengi
                    //  controller: _tabController, //!! burayı açınca sayfa geçişleri olmuyor.

                    // onTap:
                    //     (value) {}, // hangi temaya tıklandığını burdan ayarlayabiliriz.
                    tabs: const [
                  Tab(
                    text: 'page1',
                  ),
                  Tab(
                    text: 'page2',
                  )
                ]),
            notchMargin:
                10, //floatingActionButtonLocation ile arasındaki mesafe boşluk mesafesi
            shape:
                CircularNotchedRectangle(), //floatingActionButtonLocation ile arasında boşluk oluşturma süsleme
          ),
        ));
  }
}
