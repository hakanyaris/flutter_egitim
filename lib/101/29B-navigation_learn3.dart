import 'package:flutter/material.dart';

import '30-navigate_detail_learn.dart';
import '30-navigate_detail_learn2.dart';

//29-navigation_learn2.dart dersinindeki uygulamaya bir özellik daha ekliyoruz
// listedeki eleman tıklanınca diğer sayfaya gitsin orada Onayla butonuna basınca eleman ilk sayfadaki seçilen eleman yeşil renk olsun
// aynı elemana ikinci kez tıklanıp onayla ile geri dönülünce  seçilen liste eleman tekrar kırmızı olsun.

class NavigationLearn3 extends StatefulWidget {
  const NavigationLearn3({super.key});

  @override
  State<NavigationLearn3> createState() => _NavigationLearn3State();
}

class _NavigationLearn3State extends State<NavigationLearn3>
    with NavigateManager {
  List<int> selectedItems = []; // boş liste

// boş listeye eleman eklemek için bu metodu kullanacağız
  void addSelect(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            // floatingActionButton tuşuna basınca  NavigationDetailLearn() sayfasına gider.
            final response = await navigateToWidgetNormal<bool>(context,
                NavigationDetailLearn2(isOkey: selectedItems.contains(index)));

            //gidilen sayfadan  geri dönüşte diğer sayfadan pop ile herhangi bir veri gelirse (o veriyi orada ayarladık true )   if e girer
            if (response is bool) {
              //eğer Onaylaya tıklanırsa boş listeye listenin index numarasını ekler.ve ekleme işlem setState ile sarılı olduğu için ekran
              //yeniden çizilir ve context yeniden başlatılır.
              addSelect(index, response);
            }
          },
          child: Placeholder(
              // sayfadan  yeniden çizilirken selectedItems listesi  o an çizilen indexi içeriyorsa  Placeholder'ın rengi yeşil
              //içermiyorsa paceholder ın rengi kırmızı olur.
              color: selectedItems.contains(index) ? Colors.green : Colors.red),
        );
      }),
    );
  }
}



mixin NavigateManager {
  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings()));
  }
}
